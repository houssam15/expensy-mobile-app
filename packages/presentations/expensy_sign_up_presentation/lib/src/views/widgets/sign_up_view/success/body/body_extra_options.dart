import "package:flutter/material.dart";
import "body_extra_options_label.dart";
import "body_extra_options_buttons_list.dart";

class ExpensySignUpPresentationViewSuccessBodyExtraOptions extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyExtraOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      //color: Colors.grey,
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          ExpensySignUpPresentationViewSuccessBodyExtraOptionsLabel(),
          SizedBox(height: 10),
          ExpensySignUpPresentationViewSuccessBodyExtraOptionsButtonsList()
        ],
      ),
    );
  }
}
