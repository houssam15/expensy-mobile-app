import "package:flutter/material.dart";
import "expenses_list_header/expenses_list_header.dart";
import "expenses_list_recent_elements_preview/expenses_list_recent_elements_preview.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesList extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpensyDashboardPresentationViewSuccessPageExpensesListHeader(),
          ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreview()
        ],
      ),
    );
  }
}
