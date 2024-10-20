import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/home_page/graphql/homepage.graphql.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'homepage_event.dart';

part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc({required this.client}) : super(HomepageLoading()) {
    on<OnHomepageEntered>(_onHomepageEntered);
  }

  final GraphQLClient client;

  FutureOr<void> _onHomepageEntered(
    OnHomepageEntered event,
    Emitter<HomepageState> emit,
  ) async {
    final familyId = Hive.box('family').get('id');
    if (familyId == null) {
      final result = await client.query$families(
        Options$Query$families(fetchPolicy: FetchPolicy.networkOnly),
      );
      if (result.hasException) {
        emit(HomepageError(result.exception));
      }
      emit(HomepageFamilyPicking(result.parsedData!.families));
      return;
    }

    final response = await client.query$homepage(
      Options$Query$homepage(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$homepage(
          familyId: familyId,
        ),
      ),
    );

    if (response.hasException) {
      emit(HomepageError(response.exception!));
      return;
    }

    emit(
      HomepageLoaded(
        children: response.parsedData!.children,
        inventory: response.parsedData!.inventoryList,
        me: response.parsedData!.me,
      ),
    );
  }
}
