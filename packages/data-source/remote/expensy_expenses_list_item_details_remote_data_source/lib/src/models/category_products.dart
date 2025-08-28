import 'package:expensy_common/expensy_common.dart';

class CategoryProducts {
  ExpensyExpenseCategory? _category;
  double? _categoryTotal;
  List<ExpensyExpenseProduct>? _products;

  ExpensyExpenseCategory? get category => _category;
  List<ExpensyExpenseProduct>? get products => _products;
  double? get categoryTotal => _categoryTotal;

  set category(ExpensyExpenseCategory? category) => _category = category;
  set products(List<ExpensyExpenseProduct>? products) => _products = products;
  set categoryTotal(double? categoryTotal) => _categoryTotal = categoryTotal;

  void addProduct(ExpensyExpenseProduct product){
    _products ??= [];
    _products?.add(product);
  }

}
