import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static final light = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      surface: AppColors.backgroundLight,
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: AppColors.bodyTextLight,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.4,
      ),
      titleMedium: TextStyle(
        color: AppColors.textLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
      ),
    ),
  );
}
