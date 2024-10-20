import 'package:formz/formz.dart';

enum InventoryIconError { invalid }

class InventoryIcon extends FormzInput<int?, InventoryIconError> {
  InventoryIcon.pure([super.value]) : super.dirty();

  InventoryIcon.dirty([super.value]) : super.dirty();

  @override
  InventoryIconError? validator(int? value) {
    if (value != null && value < 0) {
      return InventoryIconError.invalid;
    }
    return null;
  }
}

extension InventoryIconErrorExtension on InventoryIconError {
  String text() {
    switch(this) {
      case InventoryIconError.invalid: return 'Invalid';
    }
  }
}
