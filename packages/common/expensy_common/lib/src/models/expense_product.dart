import 'package:flutter/foundation.dart';
import 'product.dart';
class ExpensyExpenseProduct {

  ExpensyProduct? _product;
  double? _total;

  void setProduct(ExpensyProduct? product) => _product = product;
  void setTotal(double? total) => _total = total;

  ExpensyProduct? getProduct() => _product;
  double? getTotal() => _total;

  static Future<List<ExpensyExpenseProduct>> toList(List? docs) async{
    List<ExpensyExpenseProduct> items = [];

      for(var doc in docs ?? []){

        try{
          items.add(
              ExpensyExpenseProduct()
                ..setTotal(doc["total"].toDouble())
                ..setProduct(await ExpensyProduct.fromJson(doc["product"]))
          );
        }catch(err){
          if(kDebugMode) print(err);
        }

      }

    return items;
  }
}
