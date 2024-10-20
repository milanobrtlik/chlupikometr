part of 'ledger_insert_bloc.dart';

@immutable
abstract class LedgerInsertEvent {}

class LedgerInsertLoadContent extends LedgerInsertEvent {
  final int inventoryId;

  LedgerInsertLoadContent(this.inventoryId);
}

class LedgerInsertRewardsChanged extends LedgerInsertEvent {
  LedgerInsertRewardsChanged(this.rewards);

  final Map<int, int> rewards;
}

class LedgerInsertSubmitted extends LedgerInsertEvent {}
