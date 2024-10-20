part of 'inventory_level_manage_bloc.dart';

@immutable
abstract class InventoryLevelManageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class OnInventoryLevelTitleChanged extends InventoryLevelManageEvent {
  OnInventoryLevelTitleChanged(this.title);

  final String title;

  @override
  List<Object> get props => [title];
}

class OnInventoryLevelDescriptionChanged extends InventoryLevelManageEvent {
  OnInventoryLevelDescriptionChanged(this.description);

  final String description;

  @override
  List<Object> get props => [description];
}

class OnInventoryLevelRewardChanged extends InventoryLevelManageEvent {
  OnInventoryLevelRewardChanged(this.reward);

  final String reward;

  @override
  List<Object> get props => [reward];
}

class OnInventoryLevelSubmitted extends InventoryLevelManageEvent {}
