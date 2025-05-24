import "package:flutter/material.dart";
import "package:expensy_common/expensy_common.dart";
import "package:expensy_expenses_list_presentation/src/config/config.dart";

class ExpensyExpensesListPresentation extends StatelessWidget {
  ExpensyExpensesListPresentation({super.key});

  ExpensyExpensesListPresentationConfig? _config;

  ExpensyExpensesListPresentationConfig getConfig() {
    _config ??= ExpensyExpensesListPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expensy Expenses List"),
      )
    );
  }
}
