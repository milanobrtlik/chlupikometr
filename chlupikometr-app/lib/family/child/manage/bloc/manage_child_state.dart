part of 'manage_child_bloc.dart';

@immutable
abstract class ManageChildState {}

class ManageChildEditing extends ManageChildState {
  ManageChildEditing({
    this.picture,
    this.pictureError,
    this.name,
    this.nameError,
    this.isSubmitted = false,
    this.isFinished = false,
  });

  final Uint8List? picture;
  final String? pictureError;
  final String? name;
  final String? nameError;
  final bool isSubmitted;
  final bool isFinished;

  ManageChildEditing copyWith({
    Uint8List? picture,
    String? pictureError,
    String? name,
    String? nameError,
    bool? isSubmitted,
    bool? isFinished,
  }) {
    return ManageChildEditing(
      picture: picture ?? this.picture,
      pictureError: pictureError,
      name: name ?? this.name,
      nameError: nameError,
      isSubmitted: isSubmitted ?? this.isSubmitted,
      isFinished: isFinished ?? this.isFinished,
    );
  }
}
