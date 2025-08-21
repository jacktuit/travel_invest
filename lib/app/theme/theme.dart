import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static final light = ThemeData(
    fontFamily: 'Manrope',
    cardColor: AppColors.cardLight,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    dividerColor: AppColors.dividerLight,
    shadowColor: AppColors.shadowLight,
    hintColor: AppColors.hintLight,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      brightness: Brightness.light,
      surface: AppColors.backgroundLight,
      onSurface: AppColors.textLight,
      onSurfaceVariant: AppColors.bodyTextLight,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.dividerLight,
      thickness: 1,
      space: 1,
      endIndent: 0,
      indent: 0,
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: AppColors.bodyTextLight,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        height: 1.4,
      ),
      titleMedium: TextStyle(
        color: AppColors.textLight,
        fontSize: 14.5,
        fontWeight: FontWeight.w500,
        height: 1.4,
      ),
      labelSmall: TextStyle(
        color: Color(0xff1B163F),
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
      labelMedium: TextStyle(
        color: Color(0xff0C0A1C),
        fontSize: 16.4,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    ),
    extensions: const [
      MyColors(
        icon: Color(0xff6C7278),
        text: Color(0xff1A1C1E),
        background: Color(0xffF4F4F4),
        card: Color(0xffFFFFFF),
        divider: Color(0xffCED4DA),
      ),
    ],
  );
}
