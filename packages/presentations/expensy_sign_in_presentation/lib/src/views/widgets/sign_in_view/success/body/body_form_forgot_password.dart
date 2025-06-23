import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensySignInPresentationViewSuccessBodyFormForgotPassword extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessBodyFormForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: (){},
              child:  Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Theme.of(context).extension<ExpensySignInColors>()?.forgotPasswordColor,
                    fontSize: 10
                  ),
              )
          )
        ],
      ),
    );
  }
}
