import "package:flutter/material.dart";

class ExpensySignInPresentationViewSuccessHeaderTitle extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 5),
      child: Text(
          "Sign in to your\nAccount",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
      ),
    );
  }

}
