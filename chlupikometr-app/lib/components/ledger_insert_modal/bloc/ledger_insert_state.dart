part of 'ledger_insert_bloc.dart';

@immutable
abstract class LedgerInsertState {}

class LedgerInsertLoading extends LedgerInsertState {}

class LedgerInsertFormFilling extends LedgerInsertState {
  LedgerInsertFormFilling({
    required this.data,
    required this.rewards,
    required this.isSubmitInProgress,
    required this.isFinished,
  });

  final Query$ledgerInsertDetail data;
  final Map<int, int> rewards;
  final bool isSubmitInProgress;
  final bool isFinished;

  LedgerInsertFormFilling copyWith({
    List<int>? selectedChildren,
    Map<int, int>? rewards,
    bool? isSubmitInProgress,
    bool? isFinished,
  }) {
    return LedgerInsertFormFilling(
      data: data,
      rewards: rewards ?? this.rewards,
      isSubmitInProgress: isSubmitInProgress ?? this.isSubmitInProgress,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}

class LedgerInsertFinished extends LedgerInsertState {}

class LedgerInsertLoadingError extends ErrorStateHelper with LedgerInsertState {
  LedgerInsertLoadingError(super.operationException);
}
