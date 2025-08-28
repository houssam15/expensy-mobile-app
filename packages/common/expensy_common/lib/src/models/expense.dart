import "package:expensy_common/expensy_common.dart";
import "package:flutter/foundation.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import "product.dart";
import "expense_product.dart";

class ExpensyExpense {
  String? _id;
  DateTime? _createdAt;
  double? _total;
  List<ExpensyExpenseProduct>? _expenseProduct;
  List<ExpensyExpenseCategoryTotal>? _expenseCategoriesTotal;

  void setId(String? id) => _id = id;
  void setCreatedAt(DateTime? createdAt) => _createdAt = createdAt;
  void setTotal(double? total) => _total = total;
  void setExpenseProducts(List<ExpensyExpenseProduct>? expenseProduct) => _expenseProduct = expenseProduct;
  void setExpenseCategoriesTotal(List<ExpensyExpenseCategoryTotal>? expenseCategoriesTotal) => _expenseCategoriesTotal = expenseCategoriesTotal;

  String? getId() => _id;
  DateTime? getCreatedAt() => _createdAt;
  double getTotal() => _total ?? 0;
  List<ExpensyExpenseProduct>? getExpenseProducts() => _expenseProduct;
  List<ExpensyExpenseCategoryTotal>? getExpenseCategoriesTotal() => _expenseCategoriesTotal;

  static Future<List<ExpensyExpense>> toList(List<dynamic>? docs) async{
    List<ExpensyExpense> items = [];
    for(var doc in docs ?? []){

      try{
        items.add(
            ExpensyExpense()
              ..setId(doc.id)
              ..setCreatedAt((doc.get("createdAt") as Timestamp).toDate())
              ..setTotal((doc.get("total") as num).toDouble())
              ..setExpenseProducts(await ExpensyExpenseProduct.toList(doc.get("products") as List?))
              ..setExpenseCategoriesTotal(await ExpensyExpenseCategoryTotal.toCategoriesTotalList(doc.get("products") as List?))
        );
      }catch(err){
        if(kDebugMode) print(err);
      }

    }

    return items;
  }

  static Future<ExpensyExpense> fromJson(doc) async{
    return ExpensyExpense()
      ..setId(doc.id)
      ..setCreatedAt((doc.data()["createdAt"] as Timestamp).toDate())
      ..setTotal((doc.data()['total'] as num).toDouble())
      ..setExpenseProducts(await ExpensyExpenseProduct.toList(doc.data()['products']));
  }

}