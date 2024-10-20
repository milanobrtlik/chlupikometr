import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/family/create/graphql/family_create.graphql.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../schema.graphql.dart';

part 'family_create_event.dart';

part 'family_create_state.dart';

class FamilyCreateBloc extends Bloc<FamilyCreateEvent, FamilyCreateState> {
  FamilyCreateBloc(this.client) : super(FamilyCreateInitial()) {
    on<OnFamilyNameChanged>(_onFamilyNameChanged);
    on<OnFamilyFormSubmitted>(_onFamilyFormSubmitted);
  }

  final GraphQLClient client;

  Future<void> _onFamilyNameChanged(
    OnFamilyNameChanged event,
    Emitter<FamilyCreateState> emit,
  ) async {
    emit((state as FamilyCreateInitial).copyWith(familyName: event.name));
  }

  Future<void> _onFamilyFormSubmitted(
    OnFamilyFormSubmitted event,
    Emitter<FamilyCreateState> emit,
  ) async {
    if (state is FamilyCreateInitial == false) {
      throw Exception('this is fucked up badly');
    }
    final s = state as FamilyCreateInitial;
    if (s.familyName == null) {
      emit(s.copyWith(error: 'Název rodiny je povinný'));
      return;
    }
    emit(s.copyWith(isProcessing: true));
    final result = await client.mutate$familyCreate(
      Options$Mutation$familyCreate(
        variables: Variables$Mutation$familyCreate(
          input: Input$FamilyCreateInput(name: s.familyName!),
        ),
      ),
    );
    if (result.hasException) {
      emit(FamilyCreateError(result.exception!));
    } else {
      await Hive.box('family')
          .put('id', result.parsedData!.familyCreate.family!.id);
      emit(FamilyCreated());
    }
  }
}
