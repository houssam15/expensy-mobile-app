import "package:expensy_common/expensy_common.dart";
import "package:expensy_sign_in_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "body_extra_options_button.dart";

class ExpensySignInPresentationViewSuccessBodyExtraOptionsButtonsList extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessBodyExtraOptionsButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExpensySignInPresentationViewSuccessBodyExtraOptionsButton(
          icon: FontAwesomeIcons.facebook,
          title: "Facebook",
          iconColor: Colors.blue,
          isLoading: context.read<ExpensySignInPresentationRemoteBloc>().state.showFacebookButtonLoading(),
          onClick: () => context.read<ExpensySignInPresentationRemoteBloc>().add(ExpensySignInPresentationRemoteFacebookRequested(context)),
        ),
        ExpensySignInPresentationViewSuccessBodyExtraOptionsButton(
            icon: FontAwesomeIcons.google,
            title: "Google",
            iconColor: Colors.orange,
            isLoading: context.read<ExpensySignInPresentationRemoteBloc>().state.showGoogleButtonLoading(),
            onClick: () => context.read<ExpensySignInPresentationRemoteBloc>().add(ExpensySignInPresentationRemoteGoogleRequested(context)),
        )
      ],
    );
  }
}
