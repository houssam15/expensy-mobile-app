import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'expense_category.dart';

class ExpensyExpenseCategoryTotal {
  ExpensyExpenseCategory? _category;
  double? _total;

  void setCategory(ExpensyExpenseCategory? category) => _category = category;
  void setTotal(double? total) => _total = total;

  ExpensyExpenseCategory getCategory() => _category ?? ExpensyExpenseCategory();
  double? getTotal() => _total;

  static Future<List<ExpensyExpenseCategoryTotal>> toList(dynamic data) async {
    List<ExpensyExpenseCategoryTotal> items = [];
    try{
      for(var doc in data){
        items.add(
            ExpensyExpenseCategoryTotal()
              ..setTotal((doc['total'] as num).toDouble())
              ..setCategory(ExpensyExpenseCategory.fromJson(await (doc['category'] as DocumentReference).get()))
        );
      }
    }catch(err){
      if(kDebugMode) print(err);
    }
    return items;
  }

}
