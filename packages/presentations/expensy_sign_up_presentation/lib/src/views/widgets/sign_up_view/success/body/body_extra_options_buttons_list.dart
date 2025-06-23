import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "../../../../../blocs/remote/bloc.dart";
import "body_extra_options_button.dart";

class ExpensySignUpPresentationViewSuccessBodyExtraOptionsButtonsList extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyExtraOptionsButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExpensySignUpPresentationViewSuccessBodyExtraOptionsButton(
          icon: FontAwesomeIcons.facebook,
          title: "Facebook",
          iconColor: Colors.blue,
          isLoading: context.read<ExpensySignUpPresentationRemoteBloc>().state.showFacebookButtonLoading(),
          onClick: () => context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteFacebookRequested(context)),
        ),
        ExpensySignUpPresentationViewSuccessBodyExtraOptionsButton(
            icon: FontAwesomeIcons.google,
            title: "Google",
            iconColor: Colors.orange,
            isLoading: context.read<ExpensySignUpPresentationRemoteBloc>().state.showGoogleButtonLoading(),
            onClick: () => context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteGoogleRequested(context)),
        )
      ],
    );
  }
}
