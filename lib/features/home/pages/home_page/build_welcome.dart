import 'package:flutter/material.dart';

class BuildWelcome extends StatelessWidget {
  const BuildWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: RichText(
        text: TextSpan(
          text: 'Welcome to the World\nof ',
          style: textTheme.labelMedium?.copyWith(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
          children: [
            TextSpan(
              text: 'Profitable Travels!',
              style: textTheme.labelMedium?.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.primary,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
