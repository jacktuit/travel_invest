import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static final light = ThemeData(
    fontFamily: 'Inter',
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
    ),
  );
}
