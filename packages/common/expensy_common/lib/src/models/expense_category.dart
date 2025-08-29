import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ExpensyExpenseCategory {
  String? _id;
  String? _name;
  String? _description;
  String? _categoryPictureLink;

  void setId(String? id) => _id = id;
  void setName(String? name) => _name = name;
  void setDescription(String? description) => _description = description;
  void setCategoryPictureLink(String? link) => _categoryPictureLink = link;

  String? getId() => _id;
  String getName() => _name ?? "";
  String getDescription() => _description ?? "";
  String getCategoryPictureLink() => _categoryPictureLink ?? "";


  static Future<ExpensyExpenseCategory> fromJson(DocumentReference? docRef) async{
    var doc = await docRef?.get();

    if (doc == null) {
      throw Exception("Document data is null for document ID: ${doc?.id}");
    }

    return ExpensyExpenseCategory()
      ..setId(doc.id)
      ..setName(doc.get("name"))
      ..setDescription(doc.get("description"))
      ..setCategoryPictureLink(doc.get("categoryPictureLink"));
  }


}
