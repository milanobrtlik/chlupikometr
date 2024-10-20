import 'package:formz/formz.dart';

enum LevelRewardError { lessThanOne, notNumber, empty }

class LevelReward extends FormzInput<String, LevelRewardError> {
  const LevelReward.pure([super.value = '']) : super.pure();

  const LevelReward.dirty([super.value = '']) : super.dirty();

  @override
  LevelRewardError? validator(String? value) {
    if (value == null || value.isEmpty) return LevelRewardError.empty;
    final intVal = int.tryParse(value, radix: 10);
    if(intVal == null) {
      return LevelRewardError.notNumber;
    }
    if (intVal < 1) return LevelRewardError.lessThanOne;
    return null;
  }
}

extension LevelRewardErrorExtension on LevelRewardError {
  String text() {
    switch (this) {
      case LevelRewardError.lessThanOne:
        return 'Reward must be greater than zero.';
      case LevelRewardError.notNumber:
        return 'Must be an integer number';
      case LevelRewardError.empty:
        return 'Must be not empty.';
    }
  }
}
