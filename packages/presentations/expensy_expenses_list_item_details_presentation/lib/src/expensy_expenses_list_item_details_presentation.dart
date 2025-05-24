import "package:flutter/material.dart";
import "package:expensy_expenses_list_item_details_presentation/src/config/config.dart";

class ExpensyExpensesListItemDetailsPresentation extends StatelessWidget {
  ExpensyExpensesListItemDetailsPresentation({super.key});

  ExpensyExpensesListItemDetailsPresentationConfig? _config;

  ExpensyExpensesListItemDetailsPresentationConfig getConfig() {
    _config ??= ExpensyExpensesListItemDetailsPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Expense Details")));
  }
}
