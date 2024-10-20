part of 'inventory_level_manage_bloc.dart';

class InventoryLevelManageState  {
  const InventoryLevelManageState({
    this.status = FormzStatus.pure,
    this.id,
    this.title = const LevelTitle.pure(),
    this.description = const LevelDescription.pure(),
    this.reward = const LevelReward.pure(),
  });

  final FormzStatus status;
  final int? id;
  final LevelTitle title;
  final LevelDescription description;
  final LevelReward reward;

  InventoryLevelManageState copyWith({
    FormzStatus? status,
    LevelTitle? title,
    LevelDescription? description,
    LevelReward? reward,
  }) {
    return InventoryLevelManageState(
      id: id,
      status: status ?? this.status,
      title: title ?? this.title,
      description: description ?? this.description,
      reward: reward ?? this.reward,
    );
  }

  List<FormzInput> get inputs => [title, description, reward];
}
