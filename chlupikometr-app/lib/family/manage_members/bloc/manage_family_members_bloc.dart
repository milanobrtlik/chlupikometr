import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chlupikometr_lite/common/error_state_helper.dart';
import 'package:chlupikometr_lite/family/manage_members/graphql/manage_family_members.graphql.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'manage_family_members_event.dart';

part 'manage_family_members_state.dart';

class ManageFamilyMembersBloc
    extends Bloc<ManageFamilyMembersEvent, ManageFamilyMembersState> {
  ManageFamilyMembersBloc(this.client) : super(ManageFamilyMembersLoading()) {
    on<OnManageFamilyMembersEntered>(_onFamilyMembersManageEntered);
    on<OnManageFamilyMembersLeave>(_onLeave);
    on<OnManageFamilyMembersRemove>(_onRemove);
    on<OnManageFamilyMemberErrorClosed>(_onErrorClosed);
  }

  final GraphQLClient client;

  Future<void> _onFamilyMembersManageEntered(
    OnManageFamilyMembersEntered event,
    Emitter<ManageFamilyMembersState> emit,
  ) async {
    final result = await client.query$manageFamilyMembers(
      Options$Query$manageFamilyMembers(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$manageFamilyMembers(
          familyId: await Hive.box('family').get('id'),
        ),
      ),
    );
    if (result.hasException) {
      emit(ManageFamilyMembersError(result.exception!));
    } else {
      final data = result.parsedData!;
      emit(
        ManageFamilyMembersLoaded(
          me: data.me,
          parents: data.parents,
          babysitters: data.babysitters,
          children: data.children,
        ),
      );
    }
  }

  Future<void> _onLeave(
    OnManageFamilyMembersLeave event,
    Emitter<ManageFamilyMembersState> emit,
  ) async {
    final result = await client.mutate$leaveFamily(
      Options$Mutation$leaveFamily(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Mutation$leaveFamily(
          familyId: Hive.box('family').get('id'),
        ),
      ),
    );
    if (result.hasException) {
      emit(ManageFamilyMembersError(result.exception!));
      return;
    }
    final errors = result.parsedData!.leaveFamily.errors;
    if (errors.isEmpty) {
      Hive.box('family').clear();
      emit(ManageFamilyMembersLeaved());
    } else {
      emit(
        (state as ManageFamilyMembersLoaded).copyWith(
          error: UserError(code: errors.first.code),
        ),
      );
    }
  }

  Future<void> _onRemove(
    OnManageFamilyMembersRemove event,
    Emitter<ManageFamilyMembersState> emit,
  ) async {
    final result = await client.mutate$removeUser(
      Options$Mutation$removeUser(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Mutation$removeUser(
          familyId: Hive.box('family').get('id'),
          userId: event.userId,
        ),
      ),
    );
    if(result.hasException) {
      emit(ManageFamilyMembersError(result.exception!));
      return;
    }
    final data = result.parsedData!.removeUserFromFamily;
    if(data.errors.isEmpty) {
      add(OnManageFamilyMembersEntered());
    } else {
      emit(
        (state as ManageFamilyMembersLoaded).copyWith(
          error: UserError(code: data.errors.first.code),
        ),
      );
    }
  }

  Future<void> _onErrorClosed(
    OnManageFamilyMemberErrorClosed event,
    Emitter<ManageFamilyMembersState> emit,
  ) async {
    emit(
      (state as ManageFamilyMembersLoaded).copyWith(
        error: null,
      ),
    );
  }
}
