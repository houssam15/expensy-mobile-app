part of "use_case.dart";

enum GetExpenseDetailsResponseErrors{
  cantGetDocumentDetails
}

class GetExpenseDetailsResponse extends ExpensyCommonResponse{
  GetExpenseDetailsResponseErrors? _error;
  DateTime? _createdAt;
  List<CategoryByTotal>? _categoriesByTotal;
  List<CategoryProducts>? _categoryProducts;

  GetExpenseDetailsResponseErrors? get error => _error;
  DateTime? get createdAt => _createdAt;
  List<CategoryByTotal>? get categoriesByTotal => _categoriesByTotal;
  List<CategoryProducts>? get categoryProducts => _categoryProducts;

  set error(GetExpenseDetailsResponseErrors? error) => _error = error;
  set createdAt(DateTime? createdAt) => _createdAt = createdAt;
  set categoriesByTotal(List<CategoryByTotal>? categoriesByTotal) => _categoriesByTotal = categoriesByTotal;
  set categoryProducts(List<CategoryProducts>? categoryProducts) => _categoryProducts = categoryProducts;

  void addCategoryProducts(CategoryProducts cp) {
    _categoryProducts ??= [];
    _categoryProducts?.add(cp);
  }

  void addCategoryByTotal(CategoryByTotal ct) {
    _categoriesByTotal ??= [];
    _categoriesByTotal?.add(ct);
  }

  bool isSuccess() => !isHaveUnknownError() && error == null;

  CategoryProducts? findCategoryProductsByName(String? name) {
    try{
      return categoryProducts?.firstWhere((elm) => elm.category?.getName() == name);
    }on StateError catch(_){
      return null;
    }
  }

  CategoryByTotal? findCategoryByTotalByName(String? name) {
    try{
      return categoriesByTotal?.firstWhere((elm) => elm.name == name);
    }on StateError catch(_){
      return null;
    }
  }


}