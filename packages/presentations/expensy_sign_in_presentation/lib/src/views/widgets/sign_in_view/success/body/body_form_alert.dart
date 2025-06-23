import "package:expensy_common/expensy_common.dart";
import "package:expensy_sign_in_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensySignInPresentationViewSuccessBodyFormAlert extends StatelessWidget {
  ExpensySignInPresentationViewSuccessBodyFormAlert({super.key,});
  
  @override
  Widget build(BuildContext context) {

    if(!context.read<ExpensySignInPresentationRemoteBloc>().state.getAlert().isVisible()){
      return Container();
    }

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2)),
        color: (){
          if(context.read<ExpensySignInPresentationRemoteBloc>().state.getAlert().isSuccess()) return Theme.of(context).extension<ExpensySignInColors>()?.bodyFormAlertSuccessColor;
          if(context.read<ExpensySignInPresentationRemoteBloc>().state.getAlert().isWarning()) return Theme.of(context).extension<ExpensySignInColors>()?.bodyFormAlertWarningColor;
          if(context.read<ExpensySignInPresentationRemoteBloc>().state.getAlert().isError()) return Theme.of(context).extension<ExpensySignInColors>()?.bodyFormAlertErrorColor;
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
                context.read<ExpensySignInPresentationRemoteBloc>().state.getAlert().getContent(),
                style: TextStyle(
                  color: Theme.of(context).extension<ExpensySignInColors>()?.bodyFormAlertContentColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
            ),
            InkWell(
              onTap: () => context.read<ExpensySignInPresentationRemoteBloc>().add(ExpensySignInPresentationRemoteHideAlertClicked(context)),
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                      FontAwesomeIcons.x,
                      color: Theme.of(context).extension<ExpensySignInColors>()?.bodyFormAlertContentColor,
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
