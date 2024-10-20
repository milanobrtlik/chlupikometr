part of 'family_create_bloc.dart';

@immutable
abstract class FamilyCreateState {}

class FamilyCreateInitial extends FamilyCreateState {
  FamilyCreateInitial({
    this.familyName,
    this.error,
    this.isProcessing = false,
    this.isFinished = false,
  });

  final String? familyName;
  final String? error;
  final bool isProcessing;
  final bool isFinished;

  FamilyCreateInitial copyWith({
    String? familyName,
    String? error,
    bool? isProcessing,
    bool? isFinished,
  }) {
    return FamilyCreateInitial(
      familyName: familyName ?? this.familyName,
      error: error ?? this.error,
      isProcessing: isProcessing ?? this.isProcessing,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}

class FamilyCreated extends FamilyCreateState {}

class FamilyCreateError extends ErrorStateHelper with FamilyCreateState {
  FamilyCreateError(super.operationException);
}
