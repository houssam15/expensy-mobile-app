part of "use_case.dart";

class GetCategoryProductsRequest extends ExpensyCommonRequest{
  String? _categoryId;

  String? get categoryId => _categoryId;

  set categoryId(String? categoryId) => _categoryId = categoryId;
}