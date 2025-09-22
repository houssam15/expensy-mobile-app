import "package:expensy_expenses_add_new_expense_form_presentation/src/blocs/remote/bloc.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/src/views/widget/success/choose_product.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/src/views/widget/success/expense_product_item.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyExpensesAddNewExpenseFormViewSuccessPage extends StatefulWidget {
  const ExpensyExpensesAddNewExpenseFormViewSuccessPage({super.key});

  @override
  State<ExpensyExpensesAddNewExpenseFormViewSuccessPage> createState() => _ExpensyExpensesAddNewExpenseFormViewSuccessPageState();
}

class _ExpensyExpensesAddNewExpenseFormViewSuccessPageState extends State<ExpensyExpensesAddNewExpenseFormViewSuccessPage> {

  _chooseProduct(){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) => BlocProvider.value(
          value: context.read<RemoteBloc>(),
          child: BlocBuilder<RemoteBloc,RemoteState>(
            builder:(_,state) => ChooseProduct(
              categories : state.categories,
              selectedCategory: state.selectedCategory,
              selectedCategoryProducts: state.selectedCategoryProducts,
              selectedProduct: state.selectedProduct,
              onCategoryClicked: (category) => context.read<RemoteBloc>().add(RemoteGetCategoryProducts(context,category:category)),
              onProductClicked: (product) => context.read<RemoteBloc>().add(RemoteProductSelected(context,product:product)),
              onTotalChanged: (total) => context.read<RemoteBloc>().add(RemoteFormChanged(context,total:total)),
              onSaveClicked: () => context.read<RemoteBloc>().add(RemoteSaveProductClicked(context)),
            ),
          )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RemoteBloc>();
    /*return ListView.builder(
        itemCount: bloc.state.categories.length,
        itemBuilder: (context, index) => CategoryItem(category: bloc.state.categories[index])
    );*/
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: InkWell(
            onTap: _chooseProduct,
            child: Container(
                width: 200,
                height: 50,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        FontAwesomeIcons.plus,
                        size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text("New product")
                  ],
                )
            ),
          ),
        ),
        if(bloc.state.existingProducts.isNotEmpty)
        ...[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(5),
            child: Text(
              "Today existing products",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: bloc.state.existingProducts.length,
              itemBuilder: (context, index) => ExpenseProductItem(expenseProduct: bloc.state.existingProducts[index])
          )
        ],
        if(bloc.state.newAddedProducts.isNotEmpty)
          ...[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(5),
              child: Text(
                "New added products",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: bloc.state.newAddedProducts.length,
                itemBuilder: (context, index) => ExpenseProductItem(expenseProduct: bloc.state.newAddedProducts[index])
            )
          ]

      ],
    );
  }
}