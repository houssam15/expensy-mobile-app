import "package:flutter/material.dart";
import "package:expensy_common/expensy_common.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensySignInPresentationViewSuccessBodyFormSubmitButton extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessBodyFormSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: (){
              context.read<ExpensySignInPresentationRemoteBloc>().add(ExpensySignInPresentationRemoteFormSubmited(context));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).extension<ExpensySignInColors>()?.submitButtonBackgroundColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(7)
              )
            ),
            child:
            context.read<ExpensySignInPresentationRemoteBloc>().state.showSubmitButtonLoading()
                   ? SizedBox(
                        width: 15,
                        height: 15,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        )
                   )
                   :Text(
                        "Sign in",
                        style: TextStyle(
                            color: Theme.of(context).extension<ExpensySignInColors>()?.submitButtonTextColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 12
                        ),
                   )
        ),
      ),
    );
  }
}
