import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensySignInPresentationViewSuccessBodyGoToSignUpPage extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessBodyGoToSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "don't have an account ?",
            style: TextStyle(
              color: Theme.of(context).extension<ExpensySignInColors>()?.goToSignUpDonNotHaveAccountColor,
            ),
        ),
        SizedBox(width: 10),
        InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(ExpensyCommonAppRoutes.signUpRoute);
            },
            child: Text(
                "Register",
              style: TextStyle(
                color: Theme.of(context).extension<ExpensySignInColors>()?.registerColor,
                fontWeight: FontWeight.bold,
              ),
            )
        )
      ],
    );
  }
}
