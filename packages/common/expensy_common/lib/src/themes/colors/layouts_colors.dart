import 'package:flutter/material.dart';

class ExpensyLayoutsColors extends ThemeExtension<ExpensyLayoutsColors> {

  final Color bottomMenuTopBorderColor;
  final Color addButtonBackgroundColor;
  final Color addButtonIconColor;
  final Color homeButtonBackgroundColor;
  final Color homeButtonIconColor;
  final Color expensesButtonBackgroundColor;
  final Color expensesButtonIconColor;

  const ExpensyLayoutsColors({
    Color? bottomMenuTopBorderColor,
    Color? addButtonBackgroundColor,
    Color? addButtonIconColor,
    Color? homeButtonBackgroundColor,
    Color? homeButtonIconColor,
    Color? expensesButtonBackgroundColor,
    Color? expensesButtonIconColor
  })  : bottomMenuTopBorderColor = bottomMenuTopBorderColor ?? const Color.fromRGBO(158, 158, 158, 0.3)
      , addButtonBackgroundColor = addButtonBackgroundColor ?? Colors.purple
      , addButtonIconColor = addButtonIconColor ?? Colors.white
      , homeButtonBackgroundColor = homeButtonBackgroundColor ?? Colors.transparent
      , homeButtonIconColor = homeButtonIconColor ?? Colors.transparent
      , expensesButtonBackgroundColor = expensesButtonBackgroundColor ?? Colors.transparent
      , expensesButtonIconColor = expensesButtonIconColor ?? Colors.transparent;


  @override
  ExpensyLayoutsColors copyWith({
    Color? bottomMenuTopBorderColor,
    Color? addButtonBackgroundColor,
    Color? addButtonIconColor,
    Color? homeButtonBackgroundColor,
    Color? homeButtonIconColor,
    Color? expensesButtonBackgroundColor,
    Color? expensesButtonIconColor
  }) {
    return ExpensyLayoutsColors(
        bottomMenuTopBorderColor: bottomMenuTopBorderColor ?? this.bottomMenuTopBorderColor,
        addButtonBackgroundColor: addButtonBackgroundColor ?? this.addButtonBackgroundColor,
        addButtonIconColor: addButtonIconColor ?? this.addButtonIconColor,
        homeButtonBackgroundColor : homeButtonBackgroundColor ?? this.homeButtonBackgroundColor,
        homeButtonIconColor: homeButtonIconColor ?? this.homeButtonIconColor,
        expensesButtonBackgroundColor: expensesButtonBackgroundColor ?? this.expensesButtonBackgroundColor,
        expensesButtonIconColor: expensesButtonIconColor ?? this.expensesButtonIconColor
    );
  }

  @override
  ExpensyLayoutsColors lerp(ThemeExtension<ExpensyLayoutsColors>? other, double t) {
    if (other is! ExpensyLayoutsColors) return this;
    return ExpensyLayoutsColors(
        bottomMenuTopBorderColor: Color.lerp(bottomMenuTopBorderColor, other.bottomMenuTopBorderColor, t),
        addButtonBackgroundColor: Color.lerp(addButtonBackgroundColor, other.addButtonBackgroundColor, t),
        addButtonIconColor: Color.lerp(addButtonIconColor, other.addButtonIconColor, t),
        homeButtonBackgroundColor: Color.lerp(homeButtonBackgroundColor, other.homeButtonBackgroundColor, t),
        homeButtonIconColor: Color.lerp(homeButtonIconColor, other.homeButtonIconColor, t),
        expensesButtonIconColor: Color.lerp(expensesButtonIconColor, other.expensesButtonIconColor, t),
        expensesButtonBackgroundColor: Color.lerp(expensesButtonBackgroundColor, other.expensesButtonBackgroundColor, t)
    );
  }
}