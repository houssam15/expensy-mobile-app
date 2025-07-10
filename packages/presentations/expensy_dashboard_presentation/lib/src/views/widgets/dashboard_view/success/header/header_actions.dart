import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "header_profile.dart";

class ExpensyDashboardPresentationViewSuccessPageHeaderActions extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageHeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ExpensyCommonToggleThemeIconAction(),
        ExpensyDashboardPresentationViewSuccessPageHeaderProfile()
      ],
    );
  }
}
