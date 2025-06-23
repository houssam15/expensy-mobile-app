import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensySignInPresentationViewSuccessHeaderBackAction extends StatelessWidget {
  const ExpensySignInPresentationViewSuccessHeaderBackAction({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushReplacementNamed(ExpensyCommonAppRoutes.welcomeRoute);
      },
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).extension<ExpensyBackButtonColors>()?.backButtonBackground,
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Center(
          child: Icon(
              FontAwesomeIcons.angleLeft,
              color: Theme.of(context).extension<ExpensyBackButtonColors>()?.buttonColor
          ),
        ),
      ),
    );
  }
}

