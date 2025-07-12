part of "bloc.dart";

enum ExpensyDashboardPresentationRemoteStatus {
  success,failed,initial
}

class ExpensyDashboardPresentationRemoteState extends Equatable {

  ExpensyDashboardPresentationRemoteStatus _status;
  User _user;
  List<ExpensyExpense> _recentExpenses;
  bool _cantGetRecentExpenses;
  bool _cantGetUser;
  double _currentMonthTotal;
  double _lastMonthTotal;
  bool _cantGetCurrentMonthTotal;
  bool _cantGetLastMonthTotal;
  DateTime _selectedDateTime;

  ExpensyDashboardPresentationRemoteState({
    ExpensyDashboardPresentationRemoteStatus? status,
    List<ExpensyExpense>? recentExpenses,
    bool? cantGetRecentExpenses,
    User? user,
    bool? cantGetUser,
    double? currentMonthTotal,
    double? lastMonthTotal,
    bool? cantGetCurrentMonthTotal,
    bool? cantGetLastMonthTotal,
    DateTime? selectedDateTime
  })
  :_status = status ?? ExpensyDashboardPresentationRemoteStatus.initial
  ,_recentExpenses = recentExpenses ?? const []
  ,_cantGetRecentExpenses = cantGetRecentExpenses ?? false
  ,_user = user ?? User()
  ,_cantGetUser = cantGetUser ?? false
  ,_currentMonthTotal = currentMonthTotal ?? 0
  ,_lastMonthTotal = lastMonthTotal ?? 0
  ,_cantGetCurrentMonthTotal = cantGetCurrentMonthTotal ?? false
  ,_cantGetLastMonthTotal = cantGetLastMonthTotal ?? false
  ,_selectedDateTime = selectedDateTime ?? DateTime.now();

  ExpensyDashboardPresentationRemoteState copyWith({
    ExpensyDashboardPresentationRemoteStatus? status,
    List<ExpensyExpense>? recentExpenses,
    bool? cantGetRecentExpenses,
    User? user,
    bool? cantGetUser,
    double? currentMonthTotal,
    double? lastMonthTotal,
    bool? cantGetCurrentMonthTotal,
    bool? cantGetLastMonthTotal,
    DateTime? selectedDateTime
  }){
    return ExpensyDashboardPresentationRemoteState(
        status: status ?? _status,
        recentExpenses: recentExpenses ?? _recentExpenses,
        cantGetRecentExpenses: cantGetRecentExpenses ?? _cantGetRecentExpenses,
        user: user ?? _user,
        cantGetUser: cantGetUser ?? _cantGetUser,
        currentMonthTotal: currentMonthTotal ?? _currentMonthTotal,
        lastMonthTotal: lastMonthTotal ?? _lastMonthTotal,
        cantGetCurrentMonthTotal: cantGetCurrentMonthTotal ?? _cantGetCurrentMonthTotal,
        cantGetLastMonthTotal: cantGetLastMonthTotal ?? _cantGetLastMonthTotal,
        selectedDateTime: selectedDateTime ?? _selectedDateTime
    );
  }

  ExpensyDashboardPresentationRemoteStatus getStatus() => _status;

  List<ExpensyExpense> getRecentExpenses() => _recentExpenses;

  bool cantGetRecentExpenses() => _cantGetRecentExpenses;

  User getUser() => _user;

  bool cantGetUser() => _cantGetUser;

  double? getCurrentMonthTotal() => _currentMonthTotal;

  double? getLastMonthTotal() => _lastMonthTotal;

  bool cantGetCurrentMonthTotal() => _cantGetCurrentMonthTotal;

  bool cantGetLastMonthTotal() => _cantGetLastMonthTotal;

  DateTime? getSelectedDateTime() => _selectedDateTime;

  DateTime? getLastFromSelectedMonth() => DateTime(
      _selectedDateTime.month == 1 ? _selectedDateTime.year - 1 : _selectedDateTime.year,
      _selectedDateTime.month == 1 ? 12 : _selectedDateTime.month - 1,
      _selectedDateTime.day,
  );


  @override
  List<Object?> get props => [_status,_recentExpenses,_cantGetRecentExpenses,_user,_cantGetUser,_cantGetCurrentMonthTotal,_cantGetLastMonthTotal,_currentMonthTotal,_lastMonthTotal,_selectedDateTime];

}