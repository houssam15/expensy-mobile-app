import "package:flutter/material.dart";
import "header_logo.dart";
import "header_left_actions.dart";
import "header_right_actions.dart";

class ExpensyWelcomePresentationViewSuccessPageHeader extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      height: 50,
      decoration: BoxDecoration(
        border: Border(),
        //color: Colors.grey,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ExpensyWelcomePresentationViewSuccessPageHeaderLeftActions(),
          ExpensyWelcomePresentationViewSuccessPageHeaderLogo(),
          ExpensyWelcomePresentationViewSuccessPageHeaderRightActions()
        ]
      ),
    );
  }
}
