import 'package:flutter/material.dart';

class ExpensyDashboardColors extends ThemeExtension<ExpensyDashboardColors> {

  final Color listHeaderIconButton;
  final Color listHeaderIconColorBackground;
  final Color recentElementsPreviewItem;
  final Color recentElementsPreviewItemBackground;
  final Color profileSelectedMonthButton;
  final Color profileSelectedMonthButtonBackground;

  const ExpensyDashboardColors({
    Color? listHeaderIconButton,
    Color? listHeaderIconColorBackground,
    Color? recentElementsPreviewItem,
    Color? recentElementsPreviewItemBackground,
    Color? profileSelectedMonthButton,
    Color? profileSelectedMonthButtonBackground
  })
  : listHeaderIconButton = listHeaderIconButton ?? Colors.transparent
  , listHeaderIconColorBackground = listHeaderIconColorBackground ?? Colors.transparent
  , recentElementsPreviewItem = recentElementsPreviewItem ?? Colors.transparent
  , recentElementsPreviewItemBackground = recentElementsPreviewItemBackground ?? Colors.transparent
  , profileSelectedMonthButton = profileSelectedMonthButton ?? Colors.transparent
  , profileSelectedMonthButtonBackground = profileSelectedMonthButtonBackground ?? Colors.transparent;


  @override
  ExpensyDashboardColors copyWith({
    Color? listHeaderIconButton,
    Color? listHeaderIconColorBackground,
    Color? recentElementsPreviewItem,
    Color? recentElementsPreviewItemBackground,
    Color? profileSelectedMonthButton
  }) {
    return ExpensyDashboardColors(
        listHeaderIconButton: listHeaderIconButton ?? this.listHeaderIconButton,
        listHeaderIconColorBackground: listHeaderIconColorBackground ?? this.listHeaderIconColorBackground,
        recentElementsPreviewItem: recentElementsPreviewItem ?? this.recentElementsPreviewItem,
        recentElementsPreviewItemBackground: recentElementsPreviewItemBackground ?? this.recentElementsPreviewItemBackground,
        profileSelectedMonthButton: profileSelectedMonthButton ?? this.profileSelectedMonthButton
    );
  }

  @override
  ExpensyDashboardColors lerp(ThemeExtension<ExpensyDashboardColors>? other, double t) {
    if (other is! ExpensyDashboardColors) return this;
    return ExpensyDashboardColors(
        listHeaderIconButton: Color.lerp(listHeaderIconButton, other.listHeaderIconButton, t),
        listHeaderIconColorBackground: Color.lerp(listHeaderIconColorBackground, other.listHeaderIconColorBackground, t),
        recentElementsPreviewItem: Color.lerp(recentElementsPreviewItem, other.recentElementsPreviewItem, t),
        recentElementsPreviewItemBackground: Color.lerp(recentElementsPreviewItemBackground, other.recentElementsPreviewItemBackground, t),
        profileSelectedMonthButton: Color.lerp(profileSelectedMonthButton, other.profileSelectedMonthButton, t)
    );
  }

}