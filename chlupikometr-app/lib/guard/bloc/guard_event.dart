part of 'guard_bloc.dart';

@immutable
abstract class GuardEvent {}

class OnGuardStartEvent extends GuardEvent {}

class OnIdTokenReceived  extends GuardEvent {
  final String idToken;

  OnIdTokenReceived(this.idToken);
}

class OnGuardForceLogoutEvent extends GuardEvent {}
