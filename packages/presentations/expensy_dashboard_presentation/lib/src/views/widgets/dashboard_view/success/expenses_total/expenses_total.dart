import "package:flutter/material.dart";
import "expenses_total_label.dart";
import "expenses_total_card/expenses_total_card.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotal extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpensyDashboardPresentationViewSuccessPageExpensesTotalLabel(),
          ExpensyDashboardPresentationViewSuccessPageExpensesTotalCard()
        ],
      ),
    );
  }
}
