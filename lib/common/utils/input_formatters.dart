import 'package:flutter/services.dart';

final decimalInputFormatter = FilteringTextInputFormatter.allow(
  RegExp(r'^\d*\.?\d{0,2}'),
);

class UpperCaseInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  }
}
