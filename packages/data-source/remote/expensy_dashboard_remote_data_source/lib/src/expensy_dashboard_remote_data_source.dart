import "application/get_recent_expenses/use-case.dart";
import "application/get_total_expenses_amount/use-case.dart";

class ExpensyDashboardRemoteDataSource {

  Future<ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse> getRecentExpenses([ExpensyDashboardRemoteDataSourceGetRecentExpensesRequest? request]) async {
    return ExpensyDashboardRemoteDataSourceGetRecentExpensesUseCase().execute(request ?? ExpensyDashboardRemoteDataSourceGetRecentExpensesRequest());
  }

  Future<ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponse> getTotalExpensesAmount([ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest? request]) async {
    return ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountUseCase().execute(request ?? ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest());
  }

}