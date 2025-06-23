import "package:flutter/material.dart";

class ExpensySignUpPresentationViewSuccessHeaderTitle extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 5),
      child: Text(
          "Register",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
      ),
    );
  }

}
