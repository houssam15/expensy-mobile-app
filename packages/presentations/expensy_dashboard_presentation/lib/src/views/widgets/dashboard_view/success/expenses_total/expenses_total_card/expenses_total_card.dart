import "package:flutter/material.dart";
import "expenses_total_card_background/expenses_total_card_background.dart";
import "expenses_total_card_content/expenses_total_card_content.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCard extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackground(
      child: ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContent()
    );
  }
}
