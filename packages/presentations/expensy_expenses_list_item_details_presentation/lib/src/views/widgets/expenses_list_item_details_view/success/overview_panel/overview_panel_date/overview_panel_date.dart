import "package:expensy_expenses_list_item_details_presentation/src/blocs/blocs.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "overview_panel_date_item.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDate extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDate({super.key});

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListItemDetailsPresentationRemoteBloc>();
    final state = bloc.state;

    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: double.infinity,
      child: Column(
        children: [
          ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDateItem(
            margin: EdgeInsets.only(bottom: 5),
            label: "year",
            value: state.createdAt?.year.toString() ?? "____",
          ),
          ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDateItem(
            margin: EdgeInsets.symmetric(vertical: 2.5),
            label: "month",
            value: state.createdAt?.month.toString() ?? "____",
          ),
          ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelDateItem(
            margin: EdgeInsets.only(top: 5),
            label: "day",
            value: state.createdAt?.day.toString() ?? "____",
          )
        ],
      )
    );
  }

}
