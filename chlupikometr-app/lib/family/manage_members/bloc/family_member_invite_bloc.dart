import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/family/manage_members/graphql/manage_family_members.graphql.dart';
import 'package:chlupikometr_lite/schema.graphql.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'family_member_invite_event.dart';

part 'family_member_invite_state.dart';

class FamilyMemberInviteBloc
    extends Bloc<FamilyMemberInviteEvent, FamilyMemberInviteState> {
  FamilyMemberInviteBloc(this.client) : super(FamilyMemberInviteLoading()) {
    on<OnFamilyMemberInvite>(_onFamilyMemberInvite);
  }

  final GraphQLClient client;

  Future<void> _onFamilyMemberInvite(
    OnFamilyMemberInvite event,
    Emitter<FamilyMemberInviteState> emit,
  ) async {
    final result = await client.mutate$familyUserInvite(
      Options$Mutation$familyUserInvite(
        variables: Variables$Mutation$familyUserInvite(
          familyId: Hive.box('family').get('id'),
          kind: event.kind,
        ),
      ),
    );
    if (result.hasException) {
      emit(FamilyMemberInviteError(result.exception!));
    } else {
      emit(FamilyMemberInviteLoaded(result.parsedData!.familyUserInvite!));
    }
  }
}
