import 'package:flutter/material.dart';

import 'base_theme.dart';
import 'colors/colors.dart';

class ExpensyCommonDarkTheme {
  ThemeData _themeData = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Colors.white,
        secondary: Colors.grey,
        surface: Colors.yellow
    ),
    textTheme: ExpensyCommonBaseTheme.buildGoogleFontsTextTheme(
      ThemeData.light().textTheme,
      Colors.white,
      Colors.grey[600]!,
    ),
    extensions: <ThemeExtension>[
      const ExpensyBackButtonColors(
          backButtonBackground: const Color(0x172537FF),
          buttonColor: Colors.white
      ),
      const ExpensySignInColors(
          extraOptionBackgroundButtonColor : Colors.black,
          extraOptionsButtonTextColor : Colors.white,
          goToSignUpDonNotHaveAccountColor : Colors.white,
      ),
      const ExpensySignUpColors(
          extraOptionBackgroundButtonColor : Colors.black,
          extraOptionsButtonTextColor : Colors.white,
          goToSignUpDonNotHaveAccountColor : Colors.white
      ),
      const ExpensyDashboardColors(
          listHeaderIconButton: Colors.white,
          listHeaderIconColorBackground: Colors.black,
          recentElementsPreviewItem: Colors.white,
          recentElementsPreviewItemBackground: Colors.black,
          profileSelectedMonthButton: Colors.white,
          profileSelectedMonthButtonBackground: Colors.black
      ),
      const ExpensyLayoutsColors(
          homeButtonIconColor: Colors.white,
          homeButtonBackgroundColor: Colors.black,
          expensesButtonIconColor: Colors.white,
          expensesButtonBackgroundColor: Colors.black
      ),
      const ExpensyCommonColors(
        expenseItemCardBackground: Colors.black
      )
    ]
  );

  ThemeData getThemeData() {
    return _themeData;
  }




}
