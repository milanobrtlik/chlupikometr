part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}

class HomepageLoading extends HomepageState {}

class HomepageFamilyPicking extends HomepageState {
  HomepageFamilyPicking(this.families);

  final List<Query$families$families> families;
}

class HomepageLoaded extends HomepageState {
  HomepageLoaded({
    required this.children,
    required this.inventory,
    required this.me,
  });

  final List<Query$homepage$children?>? children;
  final List<Query$homepage$inventoryList> inventory;
  final Query$homepage$me me;
}

class HomepageError extends ErrorStateHelper with HomepageState {
  HomepageError(error) : super(error);
}
