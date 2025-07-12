import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensyExpensesListItemHeader extends StatelessWidget {
  const ExpensyExpensesListItemHeader({
    super.key,
    required this.createdAt,
    required this.total
  });

  final String createdAt;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            createdAt,
            style:const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.grey
            ),
        ),
        Text(
            "-\$ $total",
            style: TextStyle(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Theme.of(context).extension<ExpensyDashboardColors>()?.recentElementsPreviewItem ?? Colors.transparent,
            ),
        ),
      ]
    );
  }

}
