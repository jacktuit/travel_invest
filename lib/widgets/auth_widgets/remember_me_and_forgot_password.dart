import 'package:flutter/material.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  const RememberMeAndForgotPassword({
    super.key,
    required this.isChecked,
    required this.onChanged,
    required this.onForgotPasswordPressed,
  });

  final bool isChecked;
  final VoidCallback onChanged;
  final VoidCallback onForgotPasswordPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RememberMeWidget(isChecked: isChecked, onChanged: onChanged),
        ForgotPasswordWidget(onPressed: onForgotPasswordPressed),
      ],
    );
  }
}

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  final bool isChecked;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return TextButton.icon(
      onPressed: onChanged,
      icon: Checkbox(
        value: isChecked,
        onChanged: (value) => onChanged(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      label: Text('Remember Me'),
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(right: 8),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: textTheme.bodySmall,
        foregroundColor: textTheme.bodySmall?.color,
      ),
    );
  }
}

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: theme.colorScheme.primary,
        padding: EdgeInsets.symmetric(horizontal: 8),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.primary,
        ),
      ),
      child: Text('Forgot Password?'),
    );
  }
}
