import "application/get_expense_categories/use_case.dart";
import "application/get_expense_details/use_case.dart";

class ExpensyExpensesListItemDetailsRemoteDataSource {

  /*Future<ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponse> getExpenseCategories([ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesRequest? request]){
    return ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesUseCase().execute(request ?? ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesRequest());
  }*/

  Future<GetExpenseDetailsResponse> getExpenseDetails([GetExpenseDetailsRequest? request]) async {
    return GetExpenseDetailsUseCase().execute(request ?? GetExpenseDetailsRequest());
  }

}