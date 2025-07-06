import "package:flutter/material.dart";
import "expenses_total_card_content_value.dart";
import "expenses_total_card_content_value_monthly_evolution.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContent extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContentValue(),
                  ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContentValueMonthlyEvolution()
                ],
              )
          ),
        ],
      ),
    );
  }
}
