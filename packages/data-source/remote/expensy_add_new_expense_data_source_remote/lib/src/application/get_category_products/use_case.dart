import 'package:expensy_common/expensy_common.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class GetCategoryProductsUseCase {
  FirebaseFirestore? _instance;

  FirebaseFirestore get instance {
    _instance ??= FirebaseFirestore.instance;
    return _instance!;
  }

  Future<List<DocumentReference>> getCategoryProducts(String? categoryId) async {
    final categoryRef = FirebaseFirestore.instance
        .collection('product_category')
        .doc(categoryId);

    final snapshot = await instance.collection('products')
                    .where("category",isEqualTo: categoryRef)
                    .get();

    return snapshot.docs.map((doc) => doc.reference).toList();
  }

  Future<GetCategoryProductsResponse> execute(GetCategoryProductsRequest request) async {
    final response = GetCategoryProductsResponse();
    try{
      List<DocumentReference> products = await getCategoryProducts(request.categoryId);
      
      response.addMetaData(products);

      for(DocumentReference categoryRef in products){
        response.addItem = await ExpensyProduct.fromJson(categoryRef);
      }

    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }
}