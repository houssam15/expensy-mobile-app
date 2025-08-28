import "package:flutter/material.dart";
import "overview_panel_date/overview_panel_date.dart";
import "overview_panel_chart.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanel extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 250,
      width: double.infinity,
      child: Row(
        children: [
          ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDate(),
          ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelChart()
        ]
      ),
    );
  }
}
