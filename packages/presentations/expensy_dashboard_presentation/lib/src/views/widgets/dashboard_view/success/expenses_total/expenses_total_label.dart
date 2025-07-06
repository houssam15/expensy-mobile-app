import "package:flutter/material.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalLabel extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Expense total",
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900
      ),
    );
  }
}
