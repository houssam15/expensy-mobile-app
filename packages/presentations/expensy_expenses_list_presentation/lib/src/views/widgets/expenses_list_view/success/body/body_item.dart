import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/remote/bloc.dart";
import "body_item_header.dart";
import "body_item_content.dart";

class ExpensyExpensesListPresentationViewSuccessPageBodyItem extends StatelessWidget {
  const ExpensyExpensesListPresentationViewSuccessPageBodyItem(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    return ExpensyExpensesListItem(
      children: [
        ExpensyExpensesListPresentationViewSuccessPageBodyItemHeader(index),
        ExpensyExpensesListPresentationViewSuccessPageBodyItemContent(index)
      ],
    );
  }
}
