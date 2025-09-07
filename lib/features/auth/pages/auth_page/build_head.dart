import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/gen/assets.gen.dart';

class BuildHead extends StatelessWidget {
  const BuildHead({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);

    return Stack(
      children: [
        Image.asset(Assets.png.authImage.path),
        Positioned(
          top: padding.top + 24,
          left: 24,
          child: Image.asset(Assets.png.logoWithName.path, width: 120),
        ),
        const Positioned(
          left: 24,
          right: 24,
          bottom: 24,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: _AuthHeaderText(),
          ),
        ),
      ],
    );
  }
}

class _AuthHeaderText extends ConsumerWidget {
  const _AuthHeaderText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      'Sign in to your Account',
      style: TextStyle(
        color: Color(0xffEEEEEE),
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 1.3,
      ),
    );
  }
}
