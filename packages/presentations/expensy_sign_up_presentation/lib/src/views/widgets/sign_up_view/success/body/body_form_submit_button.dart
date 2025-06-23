import "package:flutter/material.dart";
import "package:expensy_common/expensy_common.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensySignUpPresentationViewSuccessBodyFormSubmitButton extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyFormSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: (){
              context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteFormSubmited(context));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).extension<ExpensySignUpColors>()?.submitButtonBackgroundColor,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:  BorderRadius.circular(7)
                )
            ),
            child:
            context.read<ExpensySignUpPresentationRemoteBloc>().state.showSubmitButtonLoading()
                ? SizedBox(
                width: 15,
                height: 15,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                )
            )
                :Text(
              "Sign up",
              style: TextStyle(
                  color: Theme.of(context).extension<ExpensySignUpColors>()?.submitButtonTextColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 12
              ),
            )
        ),
      ),
    );
  }
}
