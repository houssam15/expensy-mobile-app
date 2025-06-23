import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensySignUpPresentationViewSuccessBodyGoToSignUpPage extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyGoToSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "Have account ?",
              style: TextStyle(
                color: Theme.of(context).extension<ExpensySignUpColors>()?.goToSignUpDonNotHaveAccountColor,
              ),
          ),
          SizedBox(width: 10),
          InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(ExpensyCommonAppRoutes.signInRoute);
              },
              child: Text(
                  "Login",
                style: TextStyle(
                  color: Theme.of(context).extension<ExpensySignUpColors>()?.registerColor,
                  fontWeight: FontWeight.bold,
                ),
              )
          )
        ],
      ),
    );
  }
}
