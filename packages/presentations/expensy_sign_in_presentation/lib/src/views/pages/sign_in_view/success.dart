import "package:flutter/material.dart";
import "../../widgets/widgets.dart";

class ExpensySignInPresentationViewSuccessPage extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            ExpensySignInPresentationViewSuccessHeader(),
            ExpensySignInPresentationViewSuccessBody()
          ]
        ),
      ),
    );
  }
}
