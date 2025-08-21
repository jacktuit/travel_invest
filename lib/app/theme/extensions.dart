import 'package:flutter/material.dart';

import 'colors.dart';

extension ThemeBuildContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  MyColors get myColors => Theme.of(this).extension<MyColors>()!;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;
}
