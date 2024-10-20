import 'package:formz/formz.dart';

enum InventoryDescriptionError { tooLong }

class InventoryDescription extends FormzInput<String?, InventoryDescriptionError> {
  const InventoryDescription.pure([super.value = '']) : super.pure();

  const InventoryDescription.dirty([super.value = '']) : super.dirty();

  @override
  InventoryDescriptionError? validator(String? value) {
    if (value == null) return null;
    return value.length <= 700 ? null : InventoryDescriptionError.tooLong;
  }
}

extension InventoryDescriptionErrorExtension on InventoryDescriptionError {
  String text() {
    switch(this) {
      case InventoryDescriptionError.tooLong: return 'Too long.';
    }
  }
}
