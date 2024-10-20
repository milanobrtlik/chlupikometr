part of 'record_detail_bloc.dart';

@immutable
abstract class RecordDetailState {}

class RecordDetailLoading extends RecordDetailState {}

class RecordDetailLoaded extends RecordDetailState {
  RecordDetailLoaded(this.detail);

  final Query$ledgerRecordDetail$ledgerDetail$ledger detail;
}

class RecordDetailError extends ErrorStateHelper with RecordDetailState {
  RecordDetailError(super.operationException);
}
