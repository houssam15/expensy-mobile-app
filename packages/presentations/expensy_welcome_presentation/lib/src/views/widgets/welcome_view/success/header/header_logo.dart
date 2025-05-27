import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensyWelcomePresentationViewSuccessPageHeaderLogo extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
          context.read<ExpensyCommonAppThemeBloc>().state.isDark()
          ?"assets/images/logo-dark.png"
          :"assets/images/logo-light.png",
          package: context.read<ExpensyWelcomePresentationRemoteBloc>().getConfig().packageName
      ),
    );
  }
}
