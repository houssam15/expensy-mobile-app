import "package:expensy_expenses_add_new_expense_form_presentation/src/blocs/remote/bloc.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/src/views/widget/success/choose_product.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/src/views/widget/success/expense_product_item.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
                onSaveClicked: (){
                  context.read<RemoteBloc>().add(RemoteSaveProductClicked(context));
                  Navigator.of(context,rootNavigator: true).pop();
                },
              ),
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RemoteBloc>();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: bloc.state.isAddProductLoading
              ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2)
          )
              : Icon(Icons.add),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          onPressed:_chooseProduct
      ),
      body: BlocBuilder<RemoteBloc, RemoteState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoadingAnimationWidget.threeArchedCircle(
                      color: Colors.grey,
                      size: 20
                  ),
                  SizedBox(height: 10),
                  Text(
                    "loading...",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            );
          }

          if (state.currentExpense?.getExpenseProducts()?.isNotEmpty == true) {
            return Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Today products",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Expanded( // Now Expanded works because it's in a Column that's the direct child of Scaffold body
                  child: ListView.builder(
                      itemCount: (state.currentExpense?.getExpenseProducts()?.length ?? 0) + 1,
                      itemBuilder: (context, index) {
                        if (index == state.currentExpense!.getExpenseProducts()!.length) {
                          return SizedBox(height: 100);
                        }
                        return ExpenseProductItem(
                          expenseProduct: state.currentExpense!.getExpenseProducts()![index]
                        );
                      }
                  ),
                ),
              ],
            );
          }

          return Center(
            child: Text("No products added yet !"),
          );
        },
      ),
    );
  }
}