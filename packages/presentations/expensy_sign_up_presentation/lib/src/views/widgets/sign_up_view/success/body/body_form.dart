import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/remote/bloc.dart";
import "../../../../../models/form.dart";
import "body_form_alert.dart";
import "body_form_input.dart";
import "body_form_forgot_password.dart";
import "body_form_submit_button.dart";

class ExpensySignUpPresentationViewSuccessBodyForm extends StatelessWidget {
  const ExpensySignUpPresentationViewSuccessBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ExpensySignUpPresentationViewSuccessBodyFormAlert(),
          const SizedBox(height: 20),
          ExpensySignUpPresentationViewSuccessBodyFormInput(
            hintText: "Enter your full name",
            prefixIcon: Icons.email,
            labelText: "Full Name",
            initialValue: context.read<ExpensySignUpPresentationRemoteBloc>().state.getForm().getFullName(),
            onChanged: (value){
              context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteFormChanged(context,form: ExpensySignUpForm()..setFullName(value)));
            },
          ),
          const SizedBox(height: 25),
          ExpensySignUpPresentationViewSuccessBodyFormInput(
            hintText: "Enter your Email",
            prefixIcon: Icons.email,
            labelText: "Email",
            initialValue: context.read<ExpensySignUpPresentationRemoteBloc>().state.getForm().getEmail(),
            onChanged: (value){
              context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteFormChanged(context,form: ExpensySignUpForm()..setEmail(value)));
            },
          ),
          const SizedBox(height: 25),
          ExpensySignUpPresentationViewSuccessBodyFormInput(
              hintText: "Enter your Password",
              prefixIcon: Icons.lock,
              labelText: "Password",
              obscureText: true,
              initialValue: context.read<ExpensySignUpPresentationRemoteBloc>().state.getForm().getPassword(),
              onChanged: (value){
                context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteFormChanged(context,form: ExpensySignUpForm()..setPassword(value)));
              },
          ),
          const SizedBox(height: 25),
          ExpensySignUpPresentationViewSuccessBodyFormInput(
              hintText: "Enter your Password",
              prefixIcon: Icons.lock,
              labelText: "Repeat password",
              obscureText: true,
              initialValue: context.read<ExpensySignUpPresentationRemoteBloc>().state.getForm().getRepeatedPassword(),
              onChanged: (value){
                context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteFormChanged(context,form: ExpensySignUpForm()..setRepeatedPassword(value)));
              },
              validator: (_){
                if(!context.read<ExpensySignUpPresentationRemoteBloc>().state.getForm().isPasswordMatch()){
                  return "incorrect password";
                }
                return null;
              },
          ),
          SizedBox(height: 20),
          ExpensySignUpPresentationViewSuccessBodyFormSubmitButton()
        ],
      )
    );
  }
}
