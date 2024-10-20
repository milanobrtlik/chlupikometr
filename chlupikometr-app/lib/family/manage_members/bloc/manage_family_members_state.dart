part of 'manage_family_members_bloc.dart';

@immutable
abstract class ManageFamilyMembersState {}

class ManageFamilyMembersLoading extends ManageFamilyMembersState {}

class ManageFamilyMembersLoaded extends ManageFamilyMembersState {
  ManageFamilyMembersLoaded({
    required this.me,
    required this.parents,
    required this.babysitters,
    required this.children,
    this.error,
  });

  final Query$manageFamilyMembers$me me;
  final List<Query$manageFamilyMembers$parents> parents;
  final List<Query$manageFamilyMembers$babysitters> babysitters;
  final List<Query$manageFamilyMembers$children> children;
  final UserError? error;

  ManageFamilyMembersLoaded copyWith({
    Query$manageFamilyMembers$me? me,
    List<Query$manageFamilyMembers$parents>? parents,
    List<Query$manageFamilyMembers$babysitters>? babysitters,
    List<Query$manageFamilyMembers$children>? children,
    UserError? error,
  }) {
    return ManageFamilyMembersLoaded(
      me: me ?? this.me,
      parents: parents ?? this.parents,
      babysitters: babysitters ?? this.babysitters,
      children: children ?? this.children,
      error: error,
    );
  }
}

class ManageFamilyMembersError extends ErrorStateHelper
    with ManageFamilyMembersState {
  ManageFamilyMembersError(super.operationException);
}

class ManageFamilyMembersLeaved extends ManageFamilyMembersState {}
