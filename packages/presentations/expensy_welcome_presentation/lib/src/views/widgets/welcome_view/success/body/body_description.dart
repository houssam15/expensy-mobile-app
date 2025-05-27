import "package:flutter/material.dart";

class ExpensyWelcomePresentationViewSuccessPageBodyDescription extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageBodyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: Text(
          "Save your future by managing your expense right now",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w600
          ),
          textAlign: TextAlign.center,
      ),
    );
  }
}
