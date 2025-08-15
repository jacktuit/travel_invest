import 'package:flutter/material.dart';

class ContentInitial extends StatelessWidget {
  const ContentInitial({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Text(
            'Please enter your email address to sign in.',
            style: textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
