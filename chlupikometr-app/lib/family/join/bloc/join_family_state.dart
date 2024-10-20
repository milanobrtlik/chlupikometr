part of 'join_family_bloc.dart';

@immutable
abstract class JoinFamilyState {}

class JoinFamilyStart extends JoinFamilyState {}

class JoinFamilyScanning extends JoinFamilyState {}

class JoinFamilyLoading extends JoinFamilyState {}

class JoinFamilyError extends ErrorStateHelper with JoinFamilyState {
  JoinFamilyError(super.operationException);
}

class JoinFamilyJoined extends JoinFamilyState {}

class JoinFamilyFailed extends JoinFamilyState {}
