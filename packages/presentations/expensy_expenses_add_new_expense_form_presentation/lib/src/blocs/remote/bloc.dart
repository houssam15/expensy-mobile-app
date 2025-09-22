import "package:equatable/equatable.dart";
import "package:expensy_common/expensy_common.dart";
import "package:flutter/foundation.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:expensy_add_new_expense_data_source_remote/expensy_add_new_expense_data_source_remote.dart" as eane_dsr;

part "state.dart";
part "event.dart";

class RemoteBloc extends Bloc<RemoteEvent,RemoteState>{

  eane_dsr.DataSource? _dataSource;

  RemoteBloc():super(RemoteState()){
    on<RemoteStarted>(_onStarted);
    on<RemoteGetCategories>(_onGetCategories);
    on<RemoteAddNewExpenseRequested>(_onAddNewExpenseRequested);
    on<RemoteGetCategoryProducts>(_onGetCategoryProducts);
    on<RemoteProductSelected>(_onProductSelected);
    on<RemoteFormChanged>(_onFormChanged);
    on<RemoteSaveProductClicked>(_onSaveProductClicked);
  }

  eane_dsr.DataSource get dataSource {
    _dataSource ??= eane_dsr.DataSource();
    return _dataSource!;
  }

  _onStarted(RemoteStarted event,Emitter<RemoteState> emit) async {
    try{

    }catch(_){}
  }

  _onAddNewExpenseRequested(RemoteAddNewExpenseRequested event,Emitter<RemoteState> emit) async {
    try{

      var addNewExpense = await dataSource.addNewExpense(
          eane_dsr.AddNewExpenseRequest()
          ..currentUser = event.context.read<ExpensyCommonAuthenticationBloc>().state.getCurrentUser()
          ..productExtraDetailsList = [
                eane_dsr.ProductExtraDetails()
                                   ..categoryId = "PpZrdV7U9VRdp4OZ8NHQ"
                                   ..productId = "wc5sjygpWPbsyZhZNy49"
          ]
      );

      print(addNewExpense);
    }catch(_){}
  }

  _onGetCategories(RemoteGetCategories event,Emitter<RemoteState> emit) async {
    try{

      final getCategories = await dataSource.getCategories();

      emit(state.copyWith(
          status: getCategories.isSuccess
              ? RemoteStatus.success
              : RemoteStatus.failed,
          categories: getCategories.categories
      ));
    }catch(_){}
  }

  _onGetCategoryProducts(RemoteGetCategoryProducts event,Emitter<RemoteState> emit) async {
    try{

      final getCategoryProducts = await dataSource.getCategoryProducts(
        eane_dsr.GetCategoryProductsRequest()
                           ..categoryId = event.category?.getId()
      );

      emit(state.copyWith(
        selectedCategoryProducts: getCategoryProducts.items,
        selectedCategory: getCategoryProducts.isHaveUnknownError()
                          ? null
                          : event.category
      ));

    }catch(_){}
  }

  _onProductSelected(RemoteProductSelected event,Emitter<RemoteState> emit) async {
    try{
      emit(state.copyWith(
        selectedProduct: event.product
      ));
    }catch(_){}
  }

  _onFormChanged(RemoteFormChanged event,Emitter<RemoteState> emit) async {
    try{
      emit(state.copyWith(
        total: event.total
      ));
    }catch(_){}
  }

  _onSaveProductClicked(RemoteSaveProductClicked event,Emitter<RemoteState> emit) async {
    try{
      final addProductToExpense = await dataSource.addProductToExpense(
          eane_dsr.AddProductToExpenseRequest()
                  ..product = state.selectedProduct
                  ..total = state.total
                  ..currentUser = event.context.read<ExpensyCommonAuthenticationBloc>().state.getCurrentUser()
                  ..productExtraDetails = (
                      eane_dsr.ProductExtraDetails()
                        ..categoryId = state.selectedCategory?.getId()
                        ..productId = state.selectedProduct?.getId()
                        ..price = state.total
                  )
      );
    }catch(_){}
  }

}