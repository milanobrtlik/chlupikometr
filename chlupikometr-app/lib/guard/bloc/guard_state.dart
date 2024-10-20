part of 'guard_bloc.dart';

@immutable
abstract class GuardState {}

class GuardUnauthenticated extends GuardState {}

class GuardAuthenticated extends GuardState {}

class GuardFailed extends GuardState {}
