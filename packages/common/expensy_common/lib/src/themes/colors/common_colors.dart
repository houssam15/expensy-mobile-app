import 'package:flutter/material.dart';

class ExpensyCommonColors extends ThemeExtension<ExpensyCommonColors>  {

  final Color expenseItemCardBackground;

  const ExpensyCommonColors({
    Color? expenseItemCardBackground
  }):expenseItemCardBackground = expenseItemCardBackground ?? Colors.transparent;

  @override
  ExpensyCommonColors copyWith({
    Color? expenseItemCardBackground,
  }) {
    return ExpensyCommonColors(
      expenseItemCardBackground: expenseItemCardBackground ?? this.expenseItemCardBackground
    );
  }

  @override
  ExpensyCommonColors lerp(ThemeExtension<ExpensyCommonColors>? other, double t) {
    if (other is! ExpensyCommonColors) return this;

    return ExpensyCommonColors(
      expenseItemCardBackground: Color.lerp(expenseItemCardBackground, other.expenseItemCardBackground, t)!
    );
  }

}