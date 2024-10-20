import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/guard/graphql/guard.graphql.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:meta/meta.dart';

part 'guard_event.dart';

part 'guard_state.dart';

const clientId =
    '439098098487-84vsdd6qjo09a124f7fnjieoa5firoo2.apps.googleusercontent.com';

class GuardBloc extends Bloc<GuardEvent, GuardState> {
  GuardBloc({required this.url}) : super(GuardUnauthenticated()) {
    _client = GraphQLClient(link: HttpLink(url), cache: GraphQLCache());
    _google = GoogleSignIn(clientId: clientId);
    _google.onCurrentUserChanged.listen((event) async {
      if (event == null || (await event.authentication).idToken == null) {
        add(OnGuardForceLogoutEvent());
        return;
      }
    });
    on<OnGuardStartEvent>(_onGuardStart);
    on<OnGuardForceLogoutEvent>(_onGuardForceLogout);
  }

  final String url;
  late GoogleSignIn _google;
  late GraphQLClient _client;

  Future<void> _signIn() async {
    var longLivedToken = await Hive.box('jwt').get('longLivedToken');
    if (longLivedToken == null) {
      final u = (await _google.signInSilently()) ?? (await _google.signIn());
      if (u == null) {
        add(OnGuardForceLogoutEvent());
        return;
      }
      final idToken = (await u.authentication).idToken;
      if (idToken == null) {
        add(OnGuardForceLogoutEvent());
        return;
      }
      final response = await _client.mutate$googleSignIn(
        Options$Mutation$googleSignIn(
          variables: Variables$Mutation$googleSignIn(idToken: idToken),
        ),
      );
      if (response.hasException) {
        _signIn();
        return;
      }
      longLivedToken = response.parsedData!.googleSignIn.longLivedToken;
      if (longLivedToken == null) {
        await Hive.box('jwt').clear();
        add(OnGuardForceLogoutEvent());
        return;
      } else {
        await Hive.box('jwt').put('longLivedToken', longLivedToken);
      }
    }
    if (JwtDecoder.isExpired(longLivedToken)) {
      await Hive.box('jwt').clear();
      _signIn();
      return;
    }
  }

  Future<void> _onGuardStart(
    OnGuardStartEvent event,
    Emitter<GuardState> emit,
  ) async {
    // await _signIn();
    emit(GuardAuthenticated());
  }

  Future<void> _onGuardForceLogout(
    OnGuardForceLogoutEvent event,
    Emitter<GuardState> emit,
  ) async {
    await Hive.box('jwt').clear();
    emit(GuardFailed());
  }

  Future<String> getShortLivedToken() async {
    var shortLivedToken = await Hive.box('jwt').get('shortLivedToken');
    if (shortLivedToken == null || JwtDecoder.isExpired(shortLivedToken)) {
      final longLivedToken = await Hive.box('jwt').get('longLivedToken');
      if (longLivedToken == null) {
        await _signIn();
        return await getShortLivedToken();
      }
      final client = GraphQLClient(
        link: AuthLink(getToken: () => 'Bearer $longLivedToken').concat(
          HttpLink(url),
        ),
        cache: GraphQLCache(),
      );
      final response = await client.mutate$refreshToken(
        Options$Mutation$refreshToken(
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      if (response.hasException) {
        add(OnGuardForceLogoutEvent());
        return '';
      }
      shortLivedToken = response.parsedData!.shortLivedToken.shortLivedToken!;
      await Hive.box('jwt').put('shortLivedToken', shortLivedToken);
    }

    return 'Bearer $shortLivedToken';
  }
}
