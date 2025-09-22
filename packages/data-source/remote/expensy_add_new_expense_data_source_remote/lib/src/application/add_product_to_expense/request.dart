part of "use_case.dart";

class AddProductToExpenseRequest extends ExpensyCommonRequest{
  ExpensyProduct? _product;
  double? _total;
  User? _currentUser;
  ProductExtraDetails? _productExtraDetails;

  ExpensyProduct? get product => _product;
  double? get total => _total;
  User? get currentUser => _currentUser;
  ProductExtraDetails? get productExtraDetails => _productExtraDetails;

  set product(ExpensyProduct? product) => _product = product;
  set total(double? total) => _total = total;
  set currentUser(User? currentUser) => _currentUser = currentUser;
  set productExtraDetails(ProductExtraDetails? productExtraDetails) => _productExtraDetails = productExtraDetails;

}
