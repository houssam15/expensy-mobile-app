import "package:flutter/material.dart";
import "body_form.dart";
import "body_go_to_sign_up_page.dart";
import "body_extra_options.dart";

class ExpensySignUpPresentationViewSuccessBody extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ExpensySignUpPresentationViewSuccessBodyForm(),
            ExpensySignUpPresentationViewSuccessBodyExtraOptions(),
            ExpensySignUpPresentationViewSuccessBodyGoToSignUpPage()
          ]
        ),
      ),
    );
  }
}