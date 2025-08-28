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
              ..setCategory(await ExpensyExpenseCategory.fromJson(doc['category']))
        );
      }
    }catch(err){
      if(kDebugMode) print(err);
    }
    return items;
  }

  static Future<List<ExpensyExpenseCategoryTotal>> toCategoriesTotalList(List? docs) async{
    List<ExpensyExpenseCategoryTotal> items = [];

    for(var doc in docs ?? []){
      var e = await doc["product"]?.get();
      var c = await ExpensyExpenseCategory.fromJson(e.get("category"));
      double total = 0;
      try{
        var exist = items.firstWhere((elm) => elm.getCategory().getName() == c.getName());
        total = (exist.getTotal() ?? 0) + doc["total"].toDouble();
        exist.setTotal(total);
      }catch(err){
        total = doc["total"].toDouble();
        items.add(
            ExpensyExpenseCategoryTotal()
              ..setTotal(total)
              ..setCategory(c)
        );
      }
    }

    return items;
  }

}
