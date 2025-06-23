import "package:flutter/material.dart";

class ExpensySignUpPresentationViewSuccessBodyExtraOptionsLabel extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyExtraOptionsLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(height: 1, color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
                "Or login with",
                style: TextStyle(
                   fontWeight: FontWeight.w900,
                   fontSize: 10,
                   color: Theme.of(context).colorScheme.secondary
                ),
            ),
          ),
        ],
      ),
    );
  }
}
