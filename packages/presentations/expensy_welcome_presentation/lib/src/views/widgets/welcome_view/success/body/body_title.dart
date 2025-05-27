import "package:flutter/material.dart";

class ExpensyWelcomePresentationViewSuccessPageBodyTitle extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageBodyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "Easy way to monitor you expense",
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 32
        ),
        textAlign: TextAlign.center
      ),
    );
  }
}
