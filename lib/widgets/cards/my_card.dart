import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.child,
    this.horizontalMargin = true,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.all(16),
  });

  final bool horizontalMargin;
  final double borderRadius;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(
        left: horizontalMargin ? 16 : 0,
        right: horizontalMargin ? 16 : 0,
      ),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: theme.cardColor,
          boxShadow: [
            BoxShadow(
              color: theme.dividerColor.withValues(alpha: .2),
              blurRadius: 8,
              spreadRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
