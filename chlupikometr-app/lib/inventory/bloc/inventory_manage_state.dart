part of 'inventory_manage_bloc.dart';

class InventoryManageState {
  const InventoryManageState({
    this.status = FormzStatus.pure,
    this.title = const InventoryTitle.pure(),
    this.description = const InventoryDescription.pure(),
    this.levels = const <Level>[],
  });

  final FormzStatus status;
  final InventoryTitle title;
  final InventoryDescription description;
  final List<Level> levels;

  InventoryManageState copyWith({
    FormzStatus? status,
    InventoryTitle? title,
    InventoryDescription? description,
    List<Level>? levels,
  }) {
    return InventoryManageState(
      status: status ?? this.status,
      title: title ?? this.title,
      description: description ?? this.description,
      levels: levels ?? this.levels,
    );
  }

  List<FormzInput> get inputs => [title, description];
}
