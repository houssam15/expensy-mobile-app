import "package:flutter/material.dart";

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
          // Expense list
          Text(
            "Expense list",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900
            ),
          ),
          //
        ],
      ),
    );
  }
}
