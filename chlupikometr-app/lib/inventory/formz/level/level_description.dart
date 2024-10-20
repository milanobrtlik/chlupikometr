import 'package:formz/formz.dart';

enum LevelDescriptionError { tooLong }

class LevelDescription
    extends FormzInput<String, LevelDescriptionError> {
  const LevelDescription.pure([super.value = '']) : super.pure();

  const LevelDescription.dirty([super.value = '']) : super.dirty();

  @override
  LevelDescriptionError? validator(String? value) {
    if (value != null && value.length >= 700) {
      return LevelDescriptionError.tooLong;
    }
    return null;
  }
}

extension LevelDescriptionErrorExtension on LevelDescriptionError {
  String text() {
    switch (this) {
      case LevelDescriptionError.tooLong:
        return 'Too long';
    }
  }
}
