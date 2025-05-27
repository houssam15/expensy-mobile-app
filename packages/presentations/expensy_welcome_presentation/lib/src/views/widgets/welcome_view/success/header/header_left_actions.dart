import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyWelcomePresentationViewSuccessPageHeaderLeftActions extends StatefulWidget {
  const ExpensyWelcomePresentationViewSuccessPageHeaderLeftActions({super.key});

  @override
  State<ExpensyWelcomePresentationViewSuccessPageHeaderLeftActions> createState() => _ExpensyWelcomePresentationViewSuccessPageHeaderLeftActionsState();
}

class _ExpensyWelcomePresentationViewSuccessPageHeaderLeftActionsState extends State<ExpensyWelcomePresentationViewSuccessPageHeaderLeftActions> {

  bool get isDark => MediaQuery.of(context).platformBrightness == Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(),
    );
  }
}
