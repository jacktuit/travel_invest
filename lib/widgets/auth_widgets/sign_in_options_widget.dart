import 'package:flutter/material.dart';
import 'package:travel_invest/gen/assets.gen.dart';

import 'or_login_with_widget.dart';

class SignInOptionsWidget extends StatelessWidget {
  const SignInOptionsWidget({
    super.key,
    required this.onGoogleTap,
    required this.onFacebookTap,
    required this.onAppleTap,
  });

  final void Function() onGoogleTap;
  final void Function() onFacebookTap;
  final void Function() onAppleTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        OrLoginWithWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 15,
            children: [
              SignInOptionWidget(
                onTap: onGoogleTap,
                imagePath: Assets.png.google.path,
              ),
              SignInOptionWidget(
                onTap: onFacebookTap,
                imagePath: Assets.png.facebook.path,
              ),
              SignInOptionWidget(
                onTap: onAppleTap,
                imagePath: Assets.png.apple.path,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SignInOptionWidget extends StatelessWidget {
  const SignInOptionWidget({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  final void Function() onTap;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: theme.dividerColor),
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 0,
              color: theme.shadowColor.withValues(alpha: .6),
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Material(
            color: theme.scaffoldBackgroundColor,
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Image.asset(imagePath, width: 18, height: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
