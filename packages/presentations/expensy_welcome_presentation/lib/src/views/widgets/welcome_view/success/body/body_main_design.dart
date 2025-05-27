import "package:expensy_common/expensy_common.dart";
import "package:expensy_welcome_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensyWelcomePresentationViewSuccessPageBodyMainDesign extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageBodyMainDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Image.asset(
        context.read<ExpensyCommonAppThemeBloc>().state.isDark()
        ? "assets/images/main-design-dark.png"
        : "assets/images/main-design-light.png",
        package: context.read<ExpensyWelcomePresentationRemoteBloc>().getConfig().packageName,
      ),
    );
  }
}
