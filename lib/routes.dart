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

class AppRoutes {

  String _initialRoute = "/";
  String _welcomeRoute = "/welcome";
  String _signInRoute = "/sign-in";
  String _signUpRoute = "/sign-up";
  String _dashboardRoute = "/dashboard";
  String _expensesListRoute = "/expenses-list";
  String _expensesListItemDetailsRoute = "/expenses-list-item-details";
  String _expensesAddNewExpenseFormRoute = "/expenses-add-new-expense-form";
  String _settingsRoute = "/settings";

  String getInitialRoute(){
    return _initialRoute;
  }

  String getWelcomeRoute(){
    return _welcomeRoute;
  }

  String getSignInRoute(){
    return _signInRoute;
  }

  String getSignUpRoute(){
    return _signUpRoute;
  }

  String getDashboardRoute(){
    return _dashboardRoute;
  }

  String getExpensesListRoute(){
    return _expensesListRoute;
  }

  String getExpensesListItemDetailsRoute(){
    return _expensesListItemDetailsRoute;
  }

  String getExpensesAddNewExpenseFormRoute(){
    return _expensesAddNewExpenseFormRoute;
  }

  String getSettingsRoute(){
    return _settingsRoute;
  }

  Map<String, Widget Function(BuildContext)> getRoutes(){
    return {
      _welcomeRoute: (context) => ExpensyWelcomePresentation(),
      _signInRoute: (context) => ExpensySignInPresentation(),
      _signUpRoute: (context) => ExpensySignUpPresentation(),
      _dashboardRoute: (context) => ExpensyDashboardPresentation(),
      _expensesListRoute: (context) => ExpensyExpensesListPresentation(),
      _expensesListItemDetailsRoute: (context) => ExpensyExpensesListItemDetailsPresentation(),
      _expensesAddNewExpenseFormRoute: (context) => ExpensyExpensesAddNewExpenseFormPresentation(),
      _settingsRoute: (context) => ExpensySettingsPresentation(),
    };
  }

  Widget getInitialWidget() {
    return ExpensySplashPresentation();
  }
}
