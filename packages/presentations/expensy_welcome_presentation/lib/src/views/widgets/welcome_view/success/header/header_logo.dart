import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/svg.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensyWelcomePresentationViewSuccessPageHeaderLogo extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SvgPicture.asset(
        context.read<ExpensyCommonAppThemeBloc>().state.isDark()
            ?"assets/images/logo-dark.svg"
            :"assets/images/logo-light.svg",
        package: context.read<ExpensyWelcomePresentationRemoteBloc>().getConfig().commonPackageName,
      )
    );
  }
}
