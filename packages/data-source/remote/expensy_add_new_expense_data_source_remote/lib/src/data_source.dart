import "application/application.dart";

class DataSource {

  Future<AddNewExpenseResponse> addNewExpense([AddNewExpenseRequest? request]){
    return AddNewExpenseUseCase().execute(request ?? AddNewExpenseRequest());
  }

  Future<GetCategoriesResponse> getCategories([GetCategoriesRequest? request]){
    return GetCategoriesUseCase().execute(request ?? GetCategoriesRequest());
  }

  Future<GetCategoryProductsResponse> getCategoryProducts([GetCategoryProductsRequest? request]){
    return GetCategoryProductsUseCase().execute(request ?? GetCategoryProductsRequest());
  }

  Future<AddProductToExpenseResponse> addProductToExpense([AddProductToExpenseRequest? request]) async {
    return AddProductToExpenseUseCase().execute(request ?? AddProductToExpenseRequest());
  }

}