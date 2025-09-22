part of "bloc.dart";

enum RemoteStatus {
  initial,failed,success
}

class RemoteState extends Equatable{

  RemoteStatus _status;
  List<ExpensyExpenseCategory> _categories;
  List<ExpensyExpenseProduct> _existingProducts;
  List<ExpensyExpenseProduct> _newAddedProducts;
  List<ExpensyProduct> _categoryProducts;
  ExpensyExpenseCategory? _selectedCategory;
  List<ExpensyProduct> _selectedCategoryProducts;
  ExpensyProduct? _selectedProduct;
  double? _total;

  RemoteState({
    RemoteStatus? status,
    List<ExpensyExpenseCategory>? categories,
    List<ExpensyExpenseProduct>? existingProducts,
    List<ExpensyExpenseProduct>? newAddedProducts,
    List<ExpensyProduct>? categoryProduct,
    ExpensyExpenseCategory? selectedCategory,
    List<ExpensyProduct>? selectedCategoryProducts,
    ExpensyProduct? selectedProduct,
    double? total
  })
  :_status = status ?? RemoteStatus.initial
  ,_categories = categories ?? const []
  ,_existingProducts = existingProducts ?? const []
  ,_newAddedProducts = newAddedProducts ?? const []
  ,_categoryProducts = categoryProduct ?? const []
  ,_selectedCategory = selectedCategory
  ,_selectedCategoryProducts = selectedCategoryProducts ?? const []
  ,_selectedProduct = selectedProduct
  ,_total = total;

  RemoteState copyWith({
    RemoteStatus? status,
    List<ExpensyExpenseCategory>? categories,
    List<ExpensyExpenseProduct>? existingProducts,
    List<ExpensyExpenseProduct>? newAddedProducts,
    List<ExpensyProduct>? categoryProducts,
    ExpensyExpenseCategory? selectedCategory,
    List<ExpensyProduct>? selectedCategoryProducts,
    ExpensyProduct? selectedProduct,
    double? total
  }){
    return RemoteState(
      status: status ?? _status,
      categories: categories ?? _categories,
      existingProducts: existingProducts ?? _existingProducts,
      newAddedProducts: newAddedProducts ?? _existingProducts,
      categoryProduct: categoryProducts ?? _categoryProducts,
      selectedCategory: selectedCategory ?? _selectedCategory,
      selectedCategoryProducts: selectedCategoryProducts ?? _selectedCategoryProducts,
      selectedProduct: selectedProduct ?? _selectedProduct,
      total: total ?? _total
    );
  }

  List<ExpensyExpenseCategory> get categories => _categories;
  List<ExpensyExpenseProduct> get existingProducts => _existingProducts;
  List<ExpensyExpenseProduct> get newAddedProducts => _newAddedProducts;
  List<ExpensyProduct> get categoryProducts => _categoryProducts;
  ExpensyExpenseCategory? get selectedCategory => _selectedCategory;
  List<ExpensyProduct> get selectedCategoryProducts => _selectedCategoryProducts;
  ExpensyProduct? get selectedProduct => _selectedProduct;
  double? get total => _total;

  @override
  List<Object?> get props => [
    _status,
    _categories,
    _existingProducts,
    _newAddedProducts,
    _categoryProducts,
    _selectedCategory,
    _selectedCategoryProducts,
    _selectedProduct,
    _total
  ];
}