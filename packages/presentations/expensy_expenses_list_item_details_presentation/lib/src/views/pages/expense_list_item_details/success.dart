import "package:flutter/material.dart";
import "../../widgets/widgets.dart";

class ExpensyExpensesListItemDetailsViewSuccess extends StatelessWidget {
  const ExpensyExpensesListItemDetailsViewSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Expense details",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900
            )
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanel(),
            ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryList()
          ],
        ),
      ),
    );
  }
}
