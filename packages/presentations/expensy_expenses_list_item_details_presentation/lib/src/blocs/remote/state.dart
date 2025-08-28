part of "bloc.dart";

enum ExpensyExpensesListItemDetailsPresentationRemoteStatus {
  initial , failed , success
}

class ExpensyExpensesListItemDetailsPresentationRemoteState extends Equatable{

  ExpensyExpensesListItemDetailsPresentationRemoteStatus _status;
  DateTime? _createdAt;
  List<details.CategoryByTotal>? _categoriesByTotal;
  List<details.CategoryProducts>? _categoryProducts;

  ExpensyExpensesListItemDetailsPresentationRemoteState({
    ExpensyExpensesListItemDetailsPresentationRemoteStatus? status,
    DateTime? createdAt,
    List<details.CategoryByTotal>? categoriesByTotal,
    List<details.CategoryProducts>? categoryProducts
  })
  :_status = status ?? ExpensyExpensesListItemDetailsPresentationRemoteStatus.initial
  ,_createdAt = createdAt
  ,_categoriesByTotal = categoriesByTotal ?? const []
  ,_categoryProducts = categoryProducts ?? const [];

  ExpensyExpensesListItemDetailsPresentationRemoteState copyWith({
    ExpensyExpensesListItemDetailsPresentationRemoteStatus? status,
    DateTime? createdAt,
    List<details.CategoryByTotal>? categoriesByTotal,
    List<details.CategoryProducts>? categoryProducts
  }){
    return ExpensyExpensesListItemDetailsPresentationRemoteState(
      status: status ?? _status,
      createdAt: createdAt ?? _createdAt,
      categoriesByTotal: categoriesByTotal ?? _categoriesByTotal,
      categoryProducts: categoryProducts ?? _categoryProducts
    );
  }

  ExpensyExpensesListItemDetailsPresentationRemoteStatus get status => _status;
  DateTime? get createdAt => _createdAt;
  List<details.CategoryByTotal>? get categoriesByTotal => _categoriesByTotal;
  List<details.CategoryProducts>? get categoryProducts => _categoryProducts;

  @override
  List<Object?> get props => [_status,_createdAt,_categoriesByTotal,_categoryProducts];
}