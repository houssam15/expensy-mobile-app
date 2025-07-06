part of "use-case.dart";

class ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest extends ExpensyCommonRequest{

  User? _user;
  DateTime? _date;
  AggregationType? _aggregationType;

  void setUser(User? user) => _user = user;
  void setDate(DateTime? date) => _date = date;
  void setAggregationType(AggregationType? aggregationType) => _aggregationType = aggregationType;

  User? getUser() => _user;
  DateTime? getDate() => _date;
  AggregationType? getAggregationType() => _aggregationType;

}