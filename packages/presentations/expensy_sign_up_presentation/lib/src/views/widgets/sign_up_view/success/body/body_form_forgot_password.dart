import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensySignUpPresentationViewSuccessBodyFormForgotPassword extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyFormForgotPassword({super.key});

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
                    color: Theme.of(context).extension<ExpensySignUpColors>()?.forgotPasswordColor,
                    fontSize: 10
                  ),
              )
          )
        ],
      ),
    );
  }
}
