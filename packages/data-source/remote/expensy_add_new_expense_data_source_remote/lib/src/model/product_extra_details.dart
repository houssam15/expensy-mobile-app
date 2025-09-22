import "package:equatable/equatable.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductExtraDetails extends Equatable{
  String? _categoryId;
  String? _productId;
  double? _price;
  DocumentReference? _categoryReference;
  DocumentReference? _productReference;

  String? get categoryId => _categoryId;
  String? get productId => _productId;
  double? get price => _price;
  DocumentReference? get categoryReference => _categoryReference;
  DocumentReference? get productReference => _productReference;

  set categoryId(String? categoryId) => _categoryId = categoryId;
  set productId(String? productId) => _productId = productId;
  set price(double? price) => _price = price;
  set categoryReference(DocumentReference? categoryReference) => _categoryReference = categoryReference;
  set productReference(DocumentReference? productReference) => _productReference = productReference;

  @override
  List<Object?> get props => [
    _categoryId,
    _productId,
    _price,
    _categoryReference,
    _productReference
  ];
}