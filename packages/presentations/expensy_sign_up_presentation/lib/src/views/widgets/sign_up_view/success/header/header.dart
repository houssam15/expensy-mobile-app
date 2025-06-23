import "package:expensy_common/expensy_common.dart";
import "package:expensy_sign_up_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "header_action.dart";
import "header_title.dart";
import "header_description.dart";

class ExpensySignUpPresentationViewSuccessHeader extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height*1/4,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                context.read<ExpensyCommonAppThemeBloc>().state.isDark()
                ?"assets/images/dark-header-background.png"
                :"assets/images/light-header-background.png",
                package: context.read<ExpensySignUpPresentationRemoteBloc>().getConfig().packageName
            ),
            fit: BoxFit.cover
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpensySignUpPresentationViewSuccessHeaderBackAction(),
            ExpensySignUpPresentationViewSuccessHeaderTitle(),
            ExpensySignUpPresentationViewSuccessHeaderDescription()
          ],
        ),
      ),
    );
  }
}
