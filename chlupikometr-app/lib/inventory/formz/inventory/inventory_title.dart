import 'package:formz/formz.dart';

enum InventoryTitleValidationError { empty }

class InventoryTitle extends FormzInput<String, InventoryTitleValidationError> {
  const InventoryTitle.pure([super.value = '']) : super.pure();

  const InventoryTitle.dirty([super.value = '']) : super.dirty();

  @override
  InventoryTitleValidationError? validator(String? value) {
    return value?.isEmpty ?? true ? InventoryTitleValidationError.empty : null;
  }
}

extension InventoryTitleValidationErrorExtension on InventoryTitleValidationError {
  String text() {
    switch(this) {
      case InventoryTitleValidationError.empty: return 'Title cannot be empty.';
    }
  }
}
