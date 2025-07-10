import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyWelcomePresentationViewSuccessPageHeaderRightActions extends StatefulWidget {
  const ExpensyWelcomePresentationViewSuccessPageHeaderRightActions({super.key});

  @override
  State<ExpensyWelcomePresentationViewSuccessPageHeaderRightActions> createState() => _ExpensyWelcomePresentationViewSuccessPageHeaderRightActionsState();
}

class _ExpensyWelcomePresentationViewSuccessPageHeaderRightActionsState extends State<ExpensyWelcomePresentationViewSuccessPageHeaderRightActions> {

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ExpensyCommonToggleThemeIconAction()
        ],
      ),
    );
  }
}
