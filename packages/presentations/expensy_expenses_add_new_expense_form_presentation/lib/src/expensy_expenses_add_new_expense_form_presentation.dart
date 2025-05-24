import "package:flutter/material.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/src/config/config.dart";

class ExpensyExpensesAddNewExpenseFormPresentation extends StatelessWidget {
  ExpensyExpensesAddNewExpenseFormPresentation({super.key});

  ExpensyExpensesAddNewExpenseFormPresentationConfig? _config;

  ExpensyExpensesAddNewExpenseFormPresentationConfig getConfig() {
    _config ??= ExpensyExpensesAddNewExpenseFormPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Add New Expense")));
  }
}
