part of 'ledger_child_detail_bloc.dart';

@immutable
abstract class LedgerChildDetailState {}

class LedgerChildDetailInitial extends LedgerChildDetailState {}

class LedgerChildDetailLoading extends LedgerChildDetailState {}

class LedgerChildDetailLoaded extends LedgerChildDetailState {
  LedgerChildDetailLoaded(this.data, this.child);

  final Query$homepage$children child;
  final List<Query$ledgerChildDetail$ledgerList> data;
}

class LedgerChildDetailError extends LedgerChildDetailState {
  LedgerChildDetailError(this.message);

  final String message;
}
