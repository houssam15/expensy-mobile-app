import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensySignUpPresentationViewSuccessBodyFormAlert extends StatelessWidget {
  ExpensySignUpPresentationViewSuccessBodyFormAlert({super.key,});
  
  @override
  Widget build(BuildContext context) {

    if(!context.read<ExpensySignUpPresentationRemoteBloc>().state.getAlert().isVisible()){
      return Container();
    }

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2)),
        color: (){
          if(context.read<ExpensySignUpPresentationRemoteBloc>().state.getAlert().isSuccess()) return Theme.of(context).extension<ExpensySignUpColors>()?.bodyFormAlertSuccessColor;
          if(context.read<ExpensySignUpPresentationRemoteBloc>().state.getAlert().isWarning()) return Theme.of(context).extension<ExpensySignUpColors>()?.bodyFormAlertWarningColor;
          if(context.read<ExpensySignUpPresentationRemoteBloc>().state.getAlert().isError()) return Theme.of(context).extension<ExpensySignUpColors>()?.bodyFormAlertErrorColor;
        }(),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                context.read<ExpensySignUpPresentationRemoteBloc>().state.getAlert().getContent(),
                style: TextStyle(
                  color: Theme.of(context).extension<ExpensySignUpColors>()?.bodyFormAlertContentColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
            ),
            InkWell(
              onTap: () => context.read<ExpensySignUpPresentationRemoteBloc>().add(ExpensySignUpPresentationRemoteHideAlertClicked(context)),
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                      FontAwesomeIcons.x,
                      color: Theme.of(context).extension<ExpensySignUpColors>()?.bodyFormAlertContentColor,
                      size: 12,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
