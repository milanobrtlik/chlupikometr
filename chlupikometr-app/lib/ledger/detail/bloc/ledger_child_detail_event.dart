part of 'ledger_child_detail_bloc.dart';

@immutable
abstract class LedgerChildDetailEvent {}

class OnLedgerChildDetailEntered extends LedgerChildDetailEvent {
  OnLedgerChildDetailEntered(this.child);

  final Query$homepage$children child;
}
