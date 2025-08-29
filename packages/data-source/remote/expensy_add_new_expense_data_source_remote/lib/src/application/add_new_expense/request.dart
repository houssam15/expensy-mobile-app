part of "use_case.dart";

class AddNewExpenseRequest extends ExpensyCommonRequest{
  String? _title;
  double? _price;
  String? _categoryId;
  String? _productId;

  String? get title => _title;
  double? get price => _price;
  String? get categoryId => _categoryId;
  String? get productId => _productId;

  set title(String? title) => _title = title;
  set price(double? price) => _price = price;
  set categoryId(String? categoryId) => _categoryId = categoryId;
  set productId(String? productId) => _productId = productId;
}