import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BuildPrivacyPolicy extends HookWidget {
  const BuildPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final padding = MediaQuery.paddingOf(context);
    final bottom = useMemoized(() => padding.bottom);

    return Padding(
      padding: EdgeInsets.fromLTRB(39, 16, 39, bottom + 16),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: textTheme.bodySmall?.copyWith(height: 1.5),
          children: [
            TextSpan(text: 'By signing up, you agree to the '),
            TextSpan(
              text: 'Terms of Service',
              style: textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'Data Processing Agreement',
              style: textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
