import 'package:expensy_common/expensy_common.dart';
import 'package:flutter/material.dart';

class ExpensyWelcomePresentationViewSuccessPageFooterLoginButton extends StatelessWidget {
  const ExpensyWelcomePresentationViewSuccessPageFooterLoginButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          onPressed: (){
             Navigator.of(context).pushNamed(ExpensyCommonAppRoutes.signInRoute);
          },
          child: Text(
              "Login",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),
          ),
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((states) => Colors.purple)
          ),
      ),
    );
  }
}
