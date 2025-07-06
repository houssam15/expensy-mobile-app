import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../../../blocs/remote/bloc.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContentValueMonthlyEvolution extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardContentValueMonthlyEvolution({super.key});

  @override
  Widget build(BuildContext context) {

    var bloc = context.read<ExpensyDashboardPresentationRemoteBloc>();
    var state = bloc.state;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding:EdgeInsets.all(2),
          decoration: BoxDecoration(
              color:Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Text(
            "+\$${
                state.cantGetLastMonthTotal()
                ? state.getLastMonthTotal()
                : "____"
            }",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Than last month",
          style: TextStyle(
              color: Colors.white70,
              fontSize: 7,
              fontWeight: FontWeight.w900
          ),
        )
      ],
    );
  }
}
