import 'package:flutter/foundation.dart';

class ExpensyExpenseCategory {
  String? _name;
  String? _description;
  String? _categoryPictureLink;

  void setName(String? name) => _name = name;
  void setDescription(String? description) => _description = description;
  void setCategoryPictureLink(String? link) => _categoryPictureLink = link;

  String getName() => _name ?? "";
  String getDescription() => _description ?? "";
  String getCategoryPictureLink() => _categoryPictureLink ?? "";

  static ExpensyExpenseCategory fromJson(dynamic data){
    ExpensyExpenseCategory category = ExpensyExpenseCategory();
    try{
      category
        ..setName(data.data()["name"])
        ..setDescription(data.data()["description"])
        ..setCategoryPictureLink(data.data()["categoryPictureLink"]);

    }catch(err){
      if(kDebugMode) print(err);
    }
    return category;
  }
}
