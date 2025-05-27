import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:expensy_splash_presentation/expensy_splash_presentation.dart";
import "package:expensy_welcome_presentation/expensy_welcome_presentation.dart";
import "package:expensy_sign_in_presentation/expensy_sign_in_presentation.dart";
import "package:expensy_sign_up_presentation/expensy_sign_up_presentation.dart";
import "package:expensy_dashboard_presentation/expensy_dashboard_presentation.dart";
import "package:expensy_expenses_list_presentation/expensy_expenses_list_presentation.dart";
import "package:expensy_expenses_list_item_details_presentation/expensy_expenses_list_item_details_presentation.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/expensy_expenses_add_new_expense_form_presentation.dart";
import "package:expensy_settings_presentation/expensy_settings_presentation.dart";

class AppRouting {

  String getInitialRoute(){
    return ExpensyCommonAppRoutes.initialRoute;
  }

  String getWelcomeRoute(){
    return ExpensyCommonAppRoutes.welcomeRoute;
  }

  String getSignInRoute(){
    return ExpensyCommonAppRoutes.signInRoute;
  }

  String getSignUpRoute(){
    return ExpensyCommonAppRoutes.signUpRoute;
  }

  String getDashboardRoute(){
    return ExpensyCommonAppRoutes.dashboardRoute;
  }

  String getExpensesListRoute(){
    return ExpensyCommonAppRoutes.expensesListRoute;
  }

  String getExpensesListItemDetailsRoute(){
    return ExpensyCommonAppRoutes.expensesListItemDetailsRoute;
  }

  String getExpensesAddNewExpenseFormRoute(){
    return ExpensyCommonAppRoutes.expensesAddNewExpenseFormRoute;
  }

  String getSettingsRoute(){
    return ExpensyCommonAppRoutes.settingsRoute;
  }

  Map<String, Widget Function(BuildContext)> getRoutes(){
    return {
      ExpensyCommonAppRoutes.welcomeRoute: (context) => ExpensyWelcomePresentation(),
      ExpensyCommonAppRoutes.signInRoute: (context) => ExpensySignInPresentation(),
      ExpensyCommonAppRoutes.signUpRoute: (context) => ExpensySignUpPresentation(),
      ExpensyCommonAppRoutes.dashboardRoute: (context) => ExpensyDashboardPresentation(),
      ExpensyCommonAppRoutes.expensesListRoute: (context) => ExpensyExpensesListPresentation(),
      ExpensyCommonAppRoutes.expensesListItemDetailsRoute: (context) => ExpensyExpensesListItemDetailsPresentation(),
      ExpensyCommonAppRoutes.expensesAddNewExpenseFormRoute: (context) => ExpensyExpensesAddNewExpenseFormPresentation(),
      ExpensyCommonAppRoutes.settingsRoute: (context) => ExpensySettingsPresentation(),
    };
  }

  Widget getInitialWidget() {
    return ExpensySplashPresentation();
  }
}
