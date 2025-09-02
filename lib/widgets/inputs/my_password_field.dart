import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'my_text_field.dart';

class MyPasswordField extends HookWidget {
  const MyPasswordField({
    super.key,
    this.controller,
    this.labelText,
    this.validator,
    this.hintText,
    this.autoFocus=false,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? Function(String? value)? validator;
  final String? hintText;
  final bool? autoFocus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final obscureText = useState(true);

    return MyTextField(

      controller: controller,
      labelText: labelText,
      validator: validator,
      obscureText: obscureText.value,
      hintText: hintText,
      suffixIcon: IconButton(
        icon: Icon(
          obscureText.value ? Icons.visibility : Icons.visibility_off,
          color: theme.hintColor,
        ),
        onPressed: () {
          obscureText.value = !obscureText.value;
        },
      ),
    );
  }
}
