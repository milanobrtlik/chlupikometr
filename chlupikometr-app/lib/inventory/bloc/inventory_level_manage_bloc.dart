import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/inventory/formz/level/level.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';

part 'inventory_level_manage_event.dart';

part 'inventory_level_manage_state.dart';

class InventoryLevelManageBloc
    extends Bloc<InventoryLevelManageEvent, InventoryLevelManageState> {
  InventoryLevelManageBloc(
    InventoryLevelManageState? initial,
  ) : super(initial ?? const InventoryLevelManageState()) {
    on<OnInventoryLevelTitleChanged>(_onTitleChanged);
    on<OnInventoryLevelDescriptionChanged>(_onDescriptionChanged);
    on<OnInventoryLevelRewardChanged>(_onRewardChanged);
    on<OnInventoryLevelSubmitted>(_onSubmitted);
  }

  Future<void> _onTitleChanged(
    OnInventoryLevelTitleChanged event,
    Emitter<InventoryLevelManageState> emit,
  ) async {
    emit(state.copyWith(title: LevelTitle.dirty(event.title)));
  }

  Future<void> _onDescriptionChanged(
    OnInventoryLevelDescriptionChanged event,
    Emitter<InventoryLevelManageState> emit,
  ) async {
    emit(state.copyWith(description: LevelDescription.dirty(event.description)));
  }

  Future<void> _onRewardChanged(
    OnInventoryLevelRewardChanged event,
    Emitter<InventoryLevelManageState> emit,
  ) async {
    emit(state.copyWith(reward: LevelReward.dirty(event.reward.toString())));
  }

  Future<void> _onSubmitted(
    OnInventoryLevelSubmitted event,
    Emitter<InventoryLevelManageState> emit,
  ) async {
    if (Formz.validate(state.inputs) != FormzStatus.valid) {
      return;
    }
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
}
