part of "use_case.dart";

class AddNewExpenseRequest extends ExpensyCommonRequest{
  String? _title;
  double? _price;
  User? _currentUser;
  List<ProductExtraDetails>? _productExtraDetailsList;

  String? get title => _title;
  double? get price => _price;
  User? get currentUser => _currentUser;
  List<ProductExtraDetails>? get productExtraDetailsList => _productExtraDetailsList;

  set title(String? title) => _title = title;
  set price(double? price) => _price = price;
  set currentUser(User? currentUser) => _currentUser = currentUser;
  set productExtraDetailsList(List<ProductExtraDetails>? productExtraDetailsList) => _productExtraDetailsList = productExtraDetailsList;
}