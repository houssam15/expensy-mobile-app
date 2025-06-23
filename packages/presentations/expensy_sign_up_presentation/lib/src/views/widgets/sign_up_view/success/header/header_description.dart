import "package:flutter/material.dart";

class ExpensySignUpPresentationViewSuccessHeaderDescription extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessHeaderDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 5),
      child: Text(
          "Create your account",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 12
          ),
      ),
    );
  }
}
