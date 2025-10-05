part of "bloc.dart";

class RemoteEvent extends ExpensyCommonBaseEvent{
  RemoteEvent(super.context);
}

class RemoteStarted extends RemoteEvent{
  RemoteStarted(super.context);
}

class RemoteAddNewExpenseRequested extends RemoteEvent{
  User? currentUser;
  String source;
  RemoteAddNewExpenseRequested(super.context,this.source
  ,{this.currentUser});
}

class RemoteGetCategories extends RemoteEvent{
  RemoteGetCategories(super.context);
}

class RemoteGetCategoryProducts extends RemoteEvent{
  final ExpensyExpenseCategory? category;
  RemoteGetCategoryProducts(super.context,{this.category});
}

class RemoteProductSelected extends RemoteEvent{
  final ExpensyProduct? product;
  RemoteProductSelected(super.context,{this.product});
}

class RemoteFormChanged extends RemoteEvent{
  final double? total;
  RemoteFormChanged(super.context,{this.total});
}

class RemoteSaveProductClicked extends RemoteEvent{
  RemoteSaveProductClicked(super.context);
}