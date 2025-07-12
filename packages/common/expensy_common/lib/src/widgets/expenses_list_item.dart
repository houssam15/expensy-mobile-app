import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensyExpensesListItem extends StatelessWidget {
  const ExpensyExpensesListItem({
    super.key,
    this.children = const []
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).extension<ExpensyCommonColors>()?.expenseItemCardBackground,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Colors.white30,
          width: 2,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: children,
        ),
      ),
    );
  }

}


