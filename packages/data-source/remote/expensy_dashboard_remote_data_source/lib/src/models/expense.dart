import "package:flutter/foundation.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import "expense_category_total.dart";

class ExpensyDashboardRemoteDataSourceExpense {
  String? _id;
  DateTime? _createdAt;
  double? _total;
  List<ExpensyDashboardRemoteDataSourceExpenseCategoryTotal>? _expenseCategories;

  void setId(String? id) => _id = id;
  void setCreatedAt(DateTime? createdAt) => _createdAt = createdAt;
  void setTotal(double? total) => _total = total;
  void setExpenseCategories(
      List<ExpensyDashboardRemoteDataSourceExpenseCategoryTotal>? categories,
      ) =>
      _expenseCategories = categories;

  String? getId() => _id;
  DateTime? getCreatedAt() => _createdAt;
  double? getTotal() => _total;
  List<ExpensyDashboardRemoteDataSourceExpenseCategoryTotal>? getExpenseCategories() => _expenseCategories;

  static Future<List<ExpensyDashboardRemoteDataSourceExpense>> toList(dynamic data) async{
    List<ExpensyDashboardRemoteDataSourceExpense> items = [];
    try{
      for(var doc in data.docs){
        items.add(
            ExpensyDashboardRemoteDataSourceExpense()
              ..setId(doc.id)
              ..setCreatedAt((doc.data()["createdAt"] as Timestamp).toDate())
              ..setTotal((doc.data()['total'] as num).toDouble())
              ..setExpenseCategories(await ExpensyDashboardRemoteDataSourceExpenseCategoryTotal.toList(doc.data()['expenseCategories']))
        );
      }
    }catch(err){
      if(kDebugMode) print(err);
    }
    return items;
  }

}