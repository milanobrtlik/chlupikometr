part of 'family_member_invite_bloc.dart';

@immutable
abstract class FamilyMemberInviteEvent {}

class OnFamilyMemberInvite extends FamilyMemberInviteEvent {
  OnFamilyMemberInvite(this.kind);

  final Enum$FamilyUserKind kind;
}
