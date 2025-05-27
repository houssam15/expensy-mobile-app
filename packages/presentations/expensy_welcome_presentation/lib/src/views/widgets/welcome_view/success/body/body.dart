import "package:expensy_welcome_presentation/src/views/widgets/welcome_view/success/body/body_description.dart";
import "package:expensy_welcome_presentation/src/views/widgets/welcome_view/success/body/body_title.dart";
import "package:flutter/material.dart";

import "body_main_design.dart";

class ExpensyWelcomePresentationViewSuccessPageBody extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            border: Border(),
            //color: Colors.grey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpensyWelcomePresentationViewSuccessPageBodyMainDesign(),
            ExpensyWelcomePresentationViewSuccessPageBodyTitle(),
            ExpensyWelcomePresentationViewSuccessPageBodyDescription(),
          ],
        ),
      ),
    );
  }
}
