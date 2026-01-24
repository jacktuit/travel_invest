import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import '../../../../gen/assets.gen.dart';

class BuildWelcome extends StatelessWidget {
  const BuildWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset(Assets.png.homeBackground2.path),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.vertical,
              RichText(
                text: TextSpan(
                  text: 'Welcome to the World\nof ',
                  style: textTheme.labelMedium?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: theme.cardColor,
                    height: 1.2,
                  ),
                  children: [
                    TextSpan(
                      text: 'Profitable Travels!',
                      style: textTheme.labelMedium?.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: theme.cardColor,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              20.vertical,
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.grey.shade300,
                        Colors.grey.shade600,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFF1E3F1D),
                      borderRadius: BorderRadius.circular(28.5),
                    ),
                    child: Text(
                      'More about us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              20.vertical,
            ],
          ),
        ),
      ],
    );
  }
}
