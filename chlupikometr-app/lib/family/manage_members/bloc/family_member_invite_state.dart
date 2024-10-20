part of 'family_member_invite_bloc.dart';

@immutable
abstract class FamilyMemberInviteState {}

class FamilyMemberInviteLoading extends FamilyMemberInviteState {}

class FamilyMemberInviteLoaded extends FamilyMemberInviteState {
  FamilyMemberInviteLoaded(this.token);

  final String token;
}

class FamilyMemberInviteError extends ErrorStateHelper
    with FamilyMemberInviteState {
  FamilyMemberInviteError(super.operationException);
}
