import "package:flutter/material.dart";

import "footer_register_button.dart";
import "footer_login_button.dart";

class ExpensyWelcomePresentationViewSuccessPageFooter extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      height: 50,
      decoration: BoxDecoration(
          border: Border(),
          //color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ExpensyWelcomePresentationViewSuccessPageFooterRegisterButton(),
          ExpensyWelcomePresentationViewSuccessPageFooterLoginButton()
        ],
      ),
    );
  }
}
