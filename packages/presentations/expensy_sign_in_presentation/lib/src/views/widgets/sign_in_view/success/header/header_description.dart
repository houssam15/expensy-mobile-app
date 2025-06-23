import "package:flutter/material.dart";

class ExpensySignInPresentationViewSuccessHeaderDescription extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessHeaderDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 5),
      child: Text(
          "Sign in to account",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 12
          ),
      ),
    );
  }
}
