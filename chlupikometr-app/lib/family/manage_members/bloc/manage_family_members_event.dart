part of 'manage_family_members_bloc.dart';

@immutable
abstract class ManageFamilyMembersEvent {}

class OnManageFamilyMembersEntered extends ManageFamilyMembersEvent {}

class OnManageFamilyMembersChangeName extends ManageFamilyMembersEvent {
  OnManageFamilyMembersChangeName(this.name);

  final String name;
}

class OnManageFamilyMembersLeave extends ManageFamilyMembersEvent {}

class OnManageFamilyMembersRemove extends ManageFamilyMembersEvent {
  OnManageFamilyMembersRemove(this.userId);

  final int userId;
}

class OnManageFamilyMemberErrorClosed extends ManageFamilyMembersEvent {}
