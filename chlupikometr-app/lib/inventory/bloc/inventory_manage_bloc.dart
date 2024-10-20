import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/inventory/graphql/inventory_manage.graphql.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../schema.graphql.dart';
import '../formz/inventory/inventory.dart';

part 'inventory_manage_event.dart';

part 'inventory_manage_state.dart';

class InventoryManageBloc
    extends Bloc<InventoryManageEvent, InventoryManageState> {
  InventoryManageBloc(
    this.client,
    InventoryManageState? initialState,
  ) : super(initialState ?? const InventoryManageState()) {
    on<OnInventoryTitleChanged>(_onInventoryTitleChanged);
    on<OnInventoryDescriptionChanged>(_onInventoryDescriptionChanged);
    on<OnInventoryLevelCreated>(_onLevelCreated);
    on<OnInventoryLevelChanged>(_onLevelChanged);
    on<OnInventoryLevelRemoved>(_onLevelRemoved);
    on<OnInventoryCreated>(_onCreated);
    on<OnInventoryUpdated>(_onUpdated);
  }

  final GraphQLClient client;

  Future<void> _onInventoryTitleChanged(
    OnInventoryTitleChanged event,
    Emitter<InventoryManageState> emit,
  ) async {
    emit(state.copyWith(title: InventoryTitle.dirty(event.title)));
  }

  Future<void> _onInventoryDescriptionChanged(
    OnInventoryDescriptionChanged event,
    Emitter<InventoryManageState> emit,
  ) async {
    emit(state.copyWith(
        description: InventoryDescription.dirty(event.description)));
  }

  Future<void> _onLevelChanged(
    OnInventoryLevelChanged event,
    Emitter<InventoryManageState> emit,
  ) async {
    final levels = state.levels.toList(growable: true);
    final level = levels.singleWhere((element) => element.id == event.level.id);
    final index = levels.indexOf(level);
    levels[index] = event.level;
    emit(state.copyWith(levels: levels));
  }

  Future<void> _onLevelRemoved(
    OnInventoryLevelRemoved event,
    Emitter<InventoryManageState> emit,
  ) async {
    final levels = state.levels.toList(growable: true);
    levels.removeWhere((value) => event.level == value);
    emit(state.copyWith(levels: levels));
  }

  Future<void> _onLevelCreated(
    OnInventoryLevelCreated event,
    Emitter<InventoryManageState> emit,
  ) async {
    final levels = state.levels.toList(growable: true);
    levels.add(event.level.copyWith(id: UniqueKey().hashCode));
    emit(state.copyWith(levels: levels));
  }

  Future<void> _onCreated(
    OnInventoryCreated event,
    Emitter<InventoryManageState> emit,
  ) async {
    if (Formz.validate(state.inputs) != FormzStatus.valid) {
      return;
    }
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final levels = state.levels.map(
      (e) {
        var input = Input$InventoryLevelCreateInput(
          reward: e.reward,
          title: e.title,
        );
        if (e.description is String) {
          input = input.copyWith(description: e.description);
        }
        return input;
      },
    ).toList();
    var input = Input$InventoryCreateInput(
      levels: levels,
      title: state.title.value,
    );
    if (state.description.value?.isNotEmpty ?? false) {
      input = input.copyWith(description: state.description.value!);
    }
    final result = await client.mutate$inventoryCreate(
      Options$Mutation$inventoryCreate(
        variables: Variables$Mutation$inventoryCreate(
          familyId: Hive.box('family').get('id'),
          input: input,
        ),
      ),
    );
    if (result.hasException ||
        (result.parsedData?.inventoryCreate.errors.isNotEmpty ?? true)) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
      return;
    }
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }

  Future<void> _onUpdated(
    OnInventoryUpdated event,
    Emitter<InventoryManageState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
  }
}
