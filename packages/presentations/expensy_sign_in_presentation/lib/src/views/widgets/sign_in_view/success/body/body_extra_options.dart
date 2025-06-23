import "package:flutter/material.dart";
import "body_extra_options_label.dart";
import "body_extra_options_buttons_list.dart";

class ExpensySignInPresentationViewSuccessBodyExtraOptions extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessBodyExtraOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      //color: Colors.grey,
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          ExpensySignInPresentationViewSuccessBodyExtraOptionsLabel(),
          SizedBox(height: 10),
          ExpensySignInPresentationViewSuccessBodyExtraOptionsButtonsList()
        ],
      ),
    );
  }
}
