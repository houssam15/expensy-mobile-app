import "package:flutter/material.dart";
import "profile_avatar.dart";
import "profile_welcome_user.dart";
import "profile_selected_month_button.dart";

class ExpensyDashboardPresentationViewSuccessPageProfile extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ExpensyDashboardPresentationViewSuccessPageProfileAvatar(),
          ExpensyDashboardPresentationViewSuccessPageProfileWelcomeUser(),
          ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButton()
        ]
      ),
    );
  }
}
