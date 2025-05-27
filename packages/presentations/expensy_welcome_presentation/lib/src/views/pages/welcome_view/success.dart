import "package:flutter/material.dart";
import "../../widgets/widgets.dart";

class ExpensyWelcomePresentationViewSuccessPage extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ExpensyWelcomePresentationViewSuccessPageHeader(),
              ExpensyWelcomePresentationViewSuccessPageBody(),
              ExpensyWelcomePresentationViewSuccessPageFooter()
            ]
          ),
        ),
      ),
    );
  }
}
