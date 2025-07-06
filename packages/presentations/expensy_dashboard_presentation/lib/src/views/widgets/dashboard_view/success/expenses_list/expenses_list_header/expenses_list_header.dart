import "package:flutter/material.dart";
import "expenses_list_header_label.dart";
import "expenses_list_header_icon_button.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListHeader extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ExpensyDashboardPresentationViewSuccessPageExpensesListHeaderLabel(),
          ExpensyDashboardPresentationViewSuccessPageExpensesListHeaderIconButton()
        ]
      ),
    );
  }
}
