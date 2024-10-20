part of 'inventory_manage_bloc.dart';

@immutable
abstract class InventoryManageEvent extends Equatable {
  const InventoryManageEvent();

  @override
  List<Object> get props => [];
}

class OnInventoryCreateEntered extends InventoryManageEvent {}

class OnInventoryUpdateEntered extends InventoryManageEvent {}

class OnInventoryTitleChanged extends InventoryManageEvent {
  const OnInventoryTitleChanged(this.title);

  final String title;

  @override
  List<Object> get props => [title];
}

class OnInventoryDescriptionChanged extends InventoryManageEvent {
  const OnInventoryDescriptionChanged(this.description);

  final String description;
}

class OnInventoryLevelCreated extends InventoryManageEvent {
  const OnInventoryLevelCreated(this.level);

  final Level level;
}

class OnInventoryLevelChanged extends InventoryManageEvent {
  const OnInventoryLevelChanged(this.level);

  final Level level;
}

class OnInventoryLevelRemoved extends InventoryManageEvent {
  const OnInventoryLevelRemoved(this.level);

  final Level level;
}

class OnInventoryCreated extends InventoryManageEvent {}
class OnInventoryUpdated extends InventoryManageEvent {}
