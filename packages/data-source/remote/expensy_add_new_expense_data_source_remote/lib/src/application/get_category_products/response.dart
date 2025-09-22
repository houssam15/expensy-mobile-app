part of "use_case.dart";

class GetCategoryProductsResponse extends ExpensyCommonResponse{
  List<ExpensyProduct> _items = [];

  List<ExpensyProduct> get items => _items;

  set addItem(ExpensyProduct item) => _items.add(item);
}