part of "bloc.dart";

class ExpensyLayoutsMainLayoutState extends Equatable{

  int _currentIndex;
  List<Widget> _items;
  Widget? _body;

  ExpensyLayoutsMainLayoutState({
      int currentIndex = 0,
      List<Widget>? items ,
      Widget? body
  }):_currentIndex = currentIndex,
     _items = items
              ?? [
                   ExpensyLayoutsMainLayoutBottomNavigationBarHomeItem(),
                   ExpensyLayoutsMainLayoutBottomNavigationBarAddItem(),
                   ExpensyLayoutsMainLayoutBottomNavigationBarExpensesItem()
              ],
     _body = body;

  ExpensyLayoutsMainLayoutState copyWith({
    int? currentIndex,
    List<Widget>? items,
    Widget? widget
  }){
    return ExpensyLayoutsMainLayoutState(
      currentIndex: currentIndex ?? _currentIndex,
      items: items ?? _items,
      body: widget ?? _body
    );
  }

  int getCurrentIndex(){
    return _currentIndex;
  }

  void onTap(int index){

  }

  List<Widget> getItems(){
    return _items;
  }

  Widget? getBody(){
    return _body;
  }

  @override
  List<Object?> get props => [_currentIndex,_items,_body];
}