import 'package:flutter/material.dart';

class OrLoginWithWidget extends StatelessWidget {
  const OrLoginWithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.fromLTRB(24, 36, 24, 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Expanded(child: Divider()),
          Text(
            'Or login with',
            style: textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }
}
