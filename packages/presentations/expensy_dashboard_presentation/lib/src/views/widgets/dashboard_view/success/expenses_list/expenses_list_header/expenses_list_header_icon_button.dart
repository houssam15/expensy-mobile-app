import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListHeaderIconButton extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListHeaderIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).extension<ExpensyDashboardColors>()?.listHeaderIconColorBackground,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Center(
          child: Icon(
              FontAwesomeIcons.angleRight,
              color: Theme.of(context).extension<ExpensyDashboardColors>()?.listHeaderIconButton,
              size: 20
          ),
        )
    );
  }
}
