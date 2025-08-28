import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../blocs/blocs.dart";
import "pages/expense_list_item_details/initial.dart";
import "pages/expense_list_item_details/failed.dart";
import "pages/expense_list_item_details/success.dart";

class ExpensyExpensesListItemDetailsPresentationView extends StatelessWidget {

  const ExpensyExpensesListItemDetailsPresentationView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ExpensyExpensesListItemDetailsPresentationRemoteBloc,ExpensyExpensesListItemDetailsPresentationRemoteState>(
          builder: (context, state) => (){
                switch(state.status){
                  case ExpensyExpensesListItemDetailsPresentationRemoteStatus.initial : return ExpensyExpensesListItemDetailsViewInitial();
                  case ExpensyExpensesListItemDetailsPresentationRemoteStatus.failed : return ExpensyExpensesListItemDetailsViewFailed();
                  case ExpensyExpensesListItemDetailsPresentationRemoteStatus.success : return ExpensyExpensesListItemDetailsViewSuccess();
                }
          }()
    );

  }

}
