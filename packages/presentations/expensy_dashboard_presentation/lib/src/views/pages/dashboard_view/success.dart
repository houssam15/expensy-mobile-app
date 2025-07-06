import "package:flutter/material.dart";
import "../../widgets/widgets.dart";

class ExpensySignUpPresentationViewSuccessPage extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            ExpensySignUpPresentationViewSuccessHeader(),
            ExpensySignUpPresentationViewSuccessBody()
          ]
        ),
      ),
    );
  }
}
