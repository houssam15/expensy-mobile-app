import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:expensy_common/expensy_common.dart";

class ExpensyDashboardPresentationViewSuccessPageHeaderLogo extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      context.read<ExpensyCommonAppThemeBloc>().state.isDark()
          ?"assets/images/logo-dark.svg"
          :"assets/images/logo-light.svg",
      package: context.read<ExpensyDashboardPresentationRemoteBloc>().getConfig().commonPackageName,
      width: 120,
    );
  }
}
