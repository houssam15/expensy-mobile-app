part of "bloc.dart";

class ExpensyLayoutsMainLayoutState extends Equatable{

  String _selectedRoute;
  List<ExpensyLayoutsBottomNavigationBarItem> _items;
  Widget? _body;

  ExpensyLayoutsMainLayoutState._({
      required String selectedRoute,
      required List<ExpensyLayoutsBottomNavigationBarItem> items ,
      required Widget? body
  }):_selectedRoute = selectedRoute ?? ExpensyCommonAppRoutes.dashboardRoute,
     _body = body,
     _items = items;

  factory ExpensyLayoutsMainLayoutState({
    String? selectedRoute,
    Widget? body,
  }) {
    final route = selectedRoute ?? ExpensyCommonAppRoutes.dashboardRoute;

    final items = [
      ExpensyLayoutsBottomNavigationBarItem(
        route: ExpensyCommonAppRoutes.dashboardRoute,
        child: ExpensyLayoutsMainLayoutBottomNavigationBarHomeItem(
          isSelected: route == ExpensyCommonAppRoutes.dashboardRoute,
        ),
      ),
      ExpensyLayoutsBottomNavigationBarItem(
        route: ExpensyCommonAppRoutes.expensesAddNewExpenseFormRoute,
        child: ExpensyLayoutsMainLayoutBottomNavigationBarAddItem(
          isSelected: route == ExpensyCommonAppRoutes.expensesAddNewExpenseFormRoute,
        ),
      ),
      ExpensyLayoutsBottomNavigationBarItem(
        route: ExpensyCommonAppRoutes.expensesListRoute,
        child: ExpensyLayoutsMainLayoutBottomNavigationBarExpensesItem(
          isSelected: route == ExpensyCommonAppRoutes.expensesListRoute,
        ),
      ),
    ];

    return ExpensyLayoutsMainLayoutState._(
      selectedRoute: route,
      items: items,
      body: body,
    );
  }

  ExpensyLayoutsMainLayoutState copyWith({
    String? selectedRoute,
    List<ExpensyLayoutsBottomNavigationBarItem>? items,
    Widget? body
  }){
    return ExpensyLayoutsMainLayoutState(
      selectedRoute: selectedRoute ?? _selectedRoute,
      body: body ?? _body
    );
  }

  String getSelectedRoute(){
    return _selectedRoute;
  }

  List<ExpensyLayoutsBottomNavigationBarItem> getItems(){
    return _items;
  }

  Widget? getBody(){
    return _body;
  }

  @override
  List<Object?> get props => [_selectedRoute,_items,_body];

}

