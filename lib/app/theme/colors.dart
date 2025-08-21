import 'package:flutter/material.dart';

abstract final class AppColors {
  static const primary = Color(0xff1D61E7);

  static const backgroundLight = Color(0xffF4F4F4);
  static const cardLight = Color(0xffFFFFFF);

  static const bodyTextLight = Color(0xff6C7278);
  static const textLight = Color(0xff1A1C1E);
  static const dividerLight = Color(0xffCED4DA);
  static const shadowLight = Color(0xfff4f5fa);
  static const hintLight = Color(0xffACB5BB);
}

@immutable
class MyColors extends ThemeExtension<MyColors> {
  final Color icon;
  final Color text;
  final Color background;
  final Color card;
  final Color divider;

  const MyColors({
    required this.icon,
    required this.text,
    required this.background,
    required this.card,
    required this.divider,
  });

  @override
  ThemeExtension<MyColors> copyWith({
    Color? icon,
    Color? text,
    Color? background,
    Color? card,
    Color? divider,
  }) {
    return MyColors(
      icon: icon ?? this.icon,
      text: text ?? this.text,
      background: background ?? this.background,
      card: card ?? this.card,
      divider: divider ?? this.divider,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) return this;
    return MyColors(
      icon: Color.lerp(icon, other.icon, t) ?? icon,
      text: Color.lerp(text, other.text, t) ?? text,
      background: Color.lerp(background, other.background, t) ?? background,
      card: Color.lerp(card, other.card, t) ?? card,
      divider: Color.lerp(divider, other.divider, t) ?? divider,
    );
  }
}
