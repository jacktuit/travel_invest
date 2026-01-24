import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class BuildWelcome extends StatelessWidget {
  const BuildWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return

      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          Assets.png.headBackground.path,

        ),
      );

      Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(Assets.png.headBackground.path, fit: BoxFit.cover),
      ),
    );
  }
}

// RichText(
// text: TextSpan(
// text: 'Welcome to the World\nof ',
// style: textTheme.labelMedium?.copyWith(
// fontSize: 24,
// fontWeight: FontWeight.w500,
// color: theme.cardColor,
// height: 1.2,
// ),
// children: [
// TextSpan(
// text: 'Profitable Travels!',
// style: textTheme.labelMedium?.copyWith(
// fontSize: 26,
// fontWeight: FontWeight.w700,
// color: theme.cardColor,
// height: 1.2,
// ),
// ),
// ],
// ),
// ),
