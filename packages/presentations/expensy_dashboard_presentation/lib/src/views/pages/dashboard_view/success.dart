import "package:flutter/material.dart";
import "../../widgets/widgets.dart";

class ExpensyDashboardPresentationViewSuccessPage extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExpensyDashboardPresentationViewSuccessPageHeader(),
            ExpensyDashboardPresentationViewSuccessPageProfile(),
            ExpensyDashboardPresentationViewSuccessPageExpensesTotal(),
            ExpensyDashboardPresentationViewSuccessPageExpensesList()
          ],
        ),
      ),
    );
  }
}
