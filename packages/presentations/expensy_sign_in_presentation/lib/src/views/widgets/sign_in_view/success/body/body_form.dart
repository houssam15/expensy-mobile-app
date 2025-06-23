import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/remote/bloc.dart";
import "body_form_input.dart";
import "body_form_forgot_password.dart";
import "body_form_submit_button.dart";
import "body_form_alert.dart";
import "../../../../../models/models.dart";
class ExpensySignInPresentationViewSuccessBodyForm extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ExpensySignInPresentationViewSuccessBodyFormAlert(),
          const SizedBox(height: 20),
          ExpensySignInPresentationViewSuccessBodyFormInput(
            hintText: "Enter your email",
            prefixIcon: Icons.email,
            labelText: "Email",
            initialValue: context.read<ExpensySignInPresentationRemoteBloc>().state.getForm().getEmail(),
            onChanged: (value){
              context.read<ExpensySignInPresentationRemoteBloc>().add(ExpensySignInPresentationRemoteFormChanged(context,form: ExpensySignInForm()..setEmail(value)));
            },
          ),
          const SizedBox(height: 25),
          ExpensySignInPresentationViewSuccessBodyFormInput(
            hintText: "Enter your password",
            initialValue: context.read<ExpensySignInPresentationRemoteBloc>().state.getForm().getPassword(),
            prefixIcon: Icons.lock,
            obscureText: true,
            labelText: "Password",
            onChanged: (value){
              context.read<ExpensySignInPresentationRemoteBloc>().add(ExpensySignInPresentationRemoteFormChanged(context,form: ExpensySignInForm()..setPassword(value)));
            },
          ),
          ExpensySignInPresentationViewSuccessBodyFormForgotPassword(),
          ExpensySignInPresentationViewSuccessBodyFormSubmitButton()
        ],
      )
    );
  }
}
