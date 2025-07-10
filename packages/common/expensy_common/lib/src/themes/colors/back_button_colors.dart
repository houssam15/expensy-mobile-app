import 'package:flutter/material.dart';

class ExpensyBackButtonColors extends ThemeExtension<ExpensyBackButtonColors>  {
  final Color backButtonBackground;
  final Color buttonColor;

  const ExpensyBackButtonColors({
    required this.backButtonBackground,
    required this.buttonColor,
  });

  @override
  ExpensyBackButtonColors copyWith({
    Color? backButtonBackground,
    Color? buttonColor,
  }) {
    return ExpensyBackButtonColors(
      backButtonBackground: backButtonBackground ?? this.backButtonBackground,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }

  @override
  ExpensyBackButtonColors lerp(ThemeExtension<ExpensyBackButtonColors>? other, double t) {
    if (other is! ExpensyBackButtonColors) return this;

    return ExpensyBackButtonColors(
      backButtonBackground: Color.lerp(backButtonBackground, other.backButtonBackground, t)!,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
    );
  }

}