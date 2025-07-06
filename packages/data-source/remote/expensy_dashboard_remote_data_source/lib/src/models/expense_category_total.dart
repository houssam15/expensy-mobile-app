import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'expense_category.dart';

class ExpensyDashboardRemoteDataSourceExpenseCategoryTotal {
  ExpensyDashboardRemoteDataSourceExpenseCategory? _category;
  double? _total;

  void setCategory(ExpensyDashboardRemoteDataSourceExpenseCategory? category) => _category = category;
  void setTotal(double? total) => _total = total;

  ExpensyDashboardRemoteDataSourceExpenseCategory? getCategory() => _category;
  double? getTotal() => _total;

  static Future<List<ExpensyDashboardRemoteDataSourceExpenseCategoryTotal>> toList(dynamic data) async{
    List<ExpensyDashboardRemoteDataSourceExpenseCategoryTotal> items = [];
    try{
      for(var doc in data){
        items.add(
            ExpensyDashboardRemoteDataSourceExpenseCategoryTotal()
              ..setTotal((doc['total'] as num).toDouble())
              ..setCategory(ExpensyDashboardRemoteDataSourceExpenseCategory.fromJson(await (doc['category'] as DocumentReference).get()))
        );
      }
    }catch(err){
      if(kDebugMode) print(err);
    }
    return items;
  }
}
