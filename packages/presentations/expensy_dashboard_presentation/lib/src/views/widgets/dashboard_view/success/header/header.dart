import "package:expensy_common/expensy_common.dart";
import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "header_logo.dart";
import "header_profile.dart";
import "header_actions.dart";

class ExpensyDashboardPresentationViewSuccessPageHeader extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ExpensyDashboardPresentationViewSuccessPageHeaderLogo(),
          ExpensyDashboardPresentationViewSuccessPageHeaderActions(),
        ],
      ),
    );
  }
}
