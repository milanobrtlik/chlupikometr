import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/components/ledger_insert_modal/graphql/ledger_insert.graphql.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../schema.graphql.dart';

part 'ledger_insert_event.dart';

part 'ledger_insert_state.dart';

class LedgerInsertBloc extends Bloc<LedgerInsertEvent, LedgerInsertState> {
  LedgerInsertBloc({
    required this.client,
    required this.homepageBloc,
  }) : super(LedgerInsertLoading()) {
    on<LedgerInsertLoadContent>(_startLoading);
    on<LedgerInsertRewardsChanged>(_onRewardsChanged);
    on<LedgerInsertSubmitted>(_onSubmit);
  }

  final GraphQLClient client;
  final HomepageBloc homepageBloc;

  FutureOr<void> _startLoading(LedgerInsertLoadContent event, emit) async {
    final result = await client.query$ledgerInsertDetail(
      Options$Query$ledgerInsertDetail(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$ledgerInsertDetail(
          familyId: await Hive.box('family').get('id'),
          id: event.inventoryId,
        ),
      ),
    );
    if (result.hasException) {
      emit(LedgerInsertLoadingError(result.exception!));
      return;
    }
    final levels = result.parsedData!.inventoryDetail.inventory!
        .levels.where((e) => e.isInitial);
    final rewards = <int, int>{};
    for (var child in result.parsedData!.children) {
      rewards[child.id] = levels.isEmpty ? 0 : levels.first.reward;
    }
    emit(
      LedgerInsertFormFilling(
        data: result.parsedData!,
        rewards: rewards,
        isSubmitInProgress: false,
        isFinished: false,
      ),
    );
  }

  Future<void> _onSubmit(
    LedgerInsertSubmitted event,
    Emitter<LedgerInsertState> emit,
  ) async {
    emit((state as LedgerInsertFormFilling).copyWith(
      isSubmitInProgress:
          !(state as LedgerInsertFormFilling).isSubmitInProgress,
    ));

    final rewards = List<Input$ChildRewardInput>.empty(growable: true);
    for(var reward in (state as LedgerInsertFormFilling).rewards.entries) {
      rewards.add(Input$ChildRewardInput(
        childId: reward.key,
        reward: reward.value,
      ));
    }

    final options = Options$Mutation$ledgerInsert(
      variables: Variables$Mutation$ledgerInsert(
        familyId: await Hive.box('family').get('id'),
        input: Input$LedgerInsertInput(
          inventoryId: (state as LedgerInsertFormFilling)
              .data
              .inventoryDetail
              .inventory!
              .id,
          childRewards: rewards,
        ),
      ),
    );
    final result = await client.mutate$ledgerInsert(options);
    emit((state as LedgerInsertFormFilling).copyWith(
      isFinished: true,
    ));
    homepageBloc.add(OnHomepageEntered());
  }

  Future<void> _onRewardsChanged(
    LedgerInsertRewardsChanged event,
    Emitter<LedgerInsertState> emit,
  ) async {
    emit((state as LedgerInsertFormFilling).copyWith(
      rewards: event.rewards,
    ));
  }
}
