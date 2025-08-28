import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensyExpensesListItem extends StatelessWidget {
  const ExpensyExpensesListItem({
    super.key,
    this.children = const [],
    this.onTap,
    this.expenseItemCardBackground,
    this.elevation = 1
  });

  final List<Widget> children;
  final void Function()? onTap;
  final Color? expenseItemCardBackground;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: expenseItemCardBackground ?? Theme.of(context).extension<ExpensyCommonColors>()?.expenseItemCardBackground,
        elevation: elevation,
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
      ),
    );
  }

}


