import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContentValue extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContentValue({super.key});

  @override
  Widget build(BuildContext context) {

    var bloc = context.read<ExpensyDashboardPresentationRemoteBloc>();
    var state = bloc.state;

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        "\$${
            state.cantGetCurrentMonthTotal()
            ?"____"
            :state.getCurrentMonthTotal()}",
        style: TextStyle(//
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.white
        ),
      ),
    );
  }
}
