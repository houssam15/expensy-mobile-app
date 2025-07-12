import "package:flutter/material.dart";

class ExpensyExpensesListPresentationViewSuccessPageHeader extends StatelessWidget {
  const ExpensyExpensesListPresentationViewSuccessPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
          "Expenses list",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900
          ),
      ),
    );
  }
}
