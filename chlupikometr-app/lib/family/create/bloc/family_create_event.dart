part of 'family_create_bloc.dart';

@immutable
abstract class FamilyCreateEvent {}

class OnFamilyNameChanged extends FamilyCreateEvent {
  OnFamilyNameChanged(this.name);

  final String name;
}

class OnFamilyFormSubmitted extends FamilyCreateEvent {}
