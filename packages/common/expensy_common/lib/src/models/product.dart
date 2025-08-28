import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import "expense_category.dart";

class ExpensyProduct {
  String? _id;
  String? _name;
  String? _description;
  String? _mainPictureUrl;
  ExpensyExpenseCategory? _category;

  void setId(String? id) => _id = id;
  void setName(String? name) => _name = name;
  void setDescription(String? description) => _description = description;
  void setMainPictureUrl(String? mainPictureUrl) => _mainPictureUrl = mainPictureUrl;
  void setCategory(ExpensyExpenseCategory? category) => _category = category;

  String? getId() => _id;
  ExpensyExpenseCategory? getCategory() => _category;
  String? getName() => _name;
  String? getDescription() => _description;
  String? getMainPictureUrl() => _mainPictureUrl;

  static Future<ExpensyProduct>   fromJson(DocumentReference? docRef) async{
    var doc = await docRef?.get();

    if (doc == null) {
      throw Exception("Document data is null for document ID: ${doc?.id}");
    }

    return ExpensyProduct()
      ..setId(doc.id)
      ..setName(doc.get("name"))
      ..setDescription(doc.get("description"))
      ..setMainPictureUrl(doc.get("mainPictureUrl"))
      ..setCategory(await ExpensyExpenseCategory.fromJson(doc.get("category")));
  }

}