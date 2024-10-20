import 'package:formz/formz.dart';

enum TitleValidationError { empty, short, long }

class LevelTitle extends FormzInput<String, TitleValidationError> {
  const LevelTitle.pure([super.value = '']) : super.pure();

  const LevelTitle.dirty([super.value = '']) : super.dirty();

  @override
  TitleValidationError? validator(String? value) {
    if (value == null || value.isEmpty) return TitleValidationError.empty;
    if (value.length < 4) return TitleValidationError.short;
    if (value.length > 30) return TitleValidationError.long;

    return null;
  }
}

extension TitleErrorExtension on TitleValidationError {
  String text() {
    switch(this) {
      case TitleValidationError.empty: return "Title can't be empty.";
      case TitleValidationError.short: return 'Title is too short';
      case TitleValidationError.long: return 'Title is too long';
    }
  }
}
