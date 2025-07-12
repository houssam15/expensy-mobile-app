import "package:flutter/foundation.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import "expense_category_total.dart";

class ExpensyExpense {
  String? _id;
  DateTime? _createdAt;
  double? _total;
  List<ExpensyExpenseCategoryTotal>? _expenseCategories;

  void setId(String? id) => _id = id;
  void setCreatedAt(DateTime? createdAt) => _createdAt = createdAt;
  void setTotal(double? total) => _total = total;
  void setExpenseCategories(
      List<ExpensyExpenseCategoryTotal>? categories,
      ) =>
      _expenseCategories = categories;

  String? getId() => _id;
  DateTime getCreatedAt() => _createdAt ?? DateTime.now();
  double getTotal() => _total ?? 0;
  List<ExpensyExpenseCategoryTotal> getExpenseCategories() => _expenseCategories ?? [];

  static Future<List<ExpensyExpense>> toList(dynamic data) async{
    List<ExpensyExpense> items = [];
    try{
      for(var doc in data.docs){
        items.add(
            ExpensyExpense()
              ..setId(doc.id)
              ..setCreatedAt((doc.data()["createdAt"] as Timestamp).toDate())
              ..setTotal((doc.data()['total'] as num).toDouble())
              ..setExpenseCategories(await ExpensyExpenseCategoryTotal.toList(doc.data()['expenseCategories']))
        );
      }
    }catch(err){
      if(kDebugMode) print(err);
    }
    return items;
  }

}