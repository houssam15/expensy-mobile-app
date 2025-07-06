part of "use-case.dart";

enum ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponseErrors{
  others,

}

class ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponse extends ExpensyCommonResponse{

  ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponseErrors? _error;
  double? _total;

  void setError(ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponseErrors? error) => _error = error;
  void setTotal(double? total) => _total = total;

  ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponseErrors? getError() => _error;
  bool isSuccess() => _error == null;
  bool hasError() => _error!=null || isHaveUnknownError();
  double? getTotal() => _total;

}