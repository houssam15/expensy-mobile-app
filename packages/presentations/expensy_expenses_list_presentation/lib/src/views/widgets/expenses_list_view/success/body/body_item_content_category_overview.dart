import "package:expensy_expenses_list_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensyExpensesListPresentationViewSuccessPageBodyItemContentCategoryOverview extends StatelessWidget {

  const ExpensyExpensesListPresentationViewSuccessPageBodyItemContentCategoryOverview({
    super.key,
    required this.expenseIndex,
    required this.categoryIndex
  });

  final int expenseIndex;
  final int categoryIndex;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListPresentationRemoteBloc>();
    final state = bloc.state;

    return Row(
        children: [
          Container(
             margin: EdgeInsets.all(10),
             width: 50,
             height: 50,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(12),
               child: Image.network(
                   state.getExpensesList()[expenseIndex].getExpenseCategories()[categoryIndex].getCategory().getCategoryPictureLink(),
                   fit: BoxFit.cover
               ),
             ),
           ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                   state.getExpensesList()[expenseIndex].getExpenseCategories()[categoryIndex].getCategory().getName(),
                     style: TextStyle(
                       fontWeight: FontWeight.w900
                     ),
                     overflow: TextOverflow.ellipsis,
                 ),
                 const SizedBox(height: 5),
                 Text(
                   state.getExpensesList()[expenseIndex].getExpenseCategories()[categoryIndex].getCategory().getDescription(),
                     style: TextStyle(
                         fontSize: 10,
                         color: Colors.grey
                     ),
                     overflow: TextOverflow.ellipsis,
                 )
              ]
            ),
          ),
          Text(
              "+\$${state.getExpensesList()[expenseIndex].getExpenseCategories()[categoryIndex].getTotal()}",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w900
              ),
          )
        ]
    );
  }
}
