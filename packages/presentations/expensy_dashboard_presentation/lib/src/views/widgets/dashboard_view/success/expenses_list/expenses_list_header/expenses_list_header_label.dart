import "package:flutter/material.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListHeaderLabel extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListHeaderLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //padding: const EdgeInsets.only(left: 30),
        child: Text(
          "Latest expenses",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
