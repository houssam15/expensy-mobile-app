import 'package:expensy_common/expensy_common.dart';
import "package:expensy_firebase/expensy_firebase.dart";
import "../../config/config.dart";
import "package:equatable/equatable.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import "../../model/model.dart";

part "request.dart";
part "response.dart";

class AddNewExpenseUseCase extends CommonUseCase{

  DocumentSnapshot? _expense;

  Future<AddNewExpenseResponse> execute(AddNewExpenseRequest request) async{
    var response = AddNewExpenseResponse();
    var config = Config();
    try{

      loadCurrentUser(request.currentUser?.getUserId());
      await loadCurrentExpense();

      for(ProductExtraDetails productExtraDetails in request.productExtraDetailsList ?? []){
        productExtraDetails
            ..categoryReference = await loadCategoryById(productExtraDetails.categoryId)
            ..productReference = await loadProductById(productExtraDetails.productId);

        if(
            (await productExtraDetails.categoryReference?.get())?.exists == false ||
            (await productExtraDetails.productReference?.get())?.exists == false
        ) {
          //response.error = AddNewExpenseResponseErrors.categoryOrProductNotFound;
        }else{
          //check if expense already created
          if(_expense == null || _expense?.exists == false){
            //create new expense
            await createNewExpense(
                userId: request.currentUser?.getUserId()
            );
            //reload the created expense
            await loadCurrentExpense();
          }

          //update expense
          await updateExpense(productExtraDetails: productExtraDetails);

        }
      }



    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }


  Future<DocumentReference> loadCategoryById(String? id) async{
      return instance.collection('product_category').doc(id);
  }

  Future<DocumentReference> loadProductById(String? id) async{
      return instance.collection('products').doc(id);
  }

  Future<void> loadCurrentExpense() async {
    final now = DateTime.now();
    Query<Map<String, dynamic>>? query;
    query = instance.collection('expenses');
    query = query
            .where("createdAt",isGreaterThanOrEqualTo: DateTime(now.year, now.month, now.day),isLessThanOrEqualTo: DateTime(now.year, now.month, now.day, 23, 59, 59))
            .where("creator",isEqualTo: user)
            .limit(1);
    QuerySnapshot? snapshot = await query.get();
    _expense = snapshot.docs.firstOrNull;
  }

  Future<void> createNewExpense({
    String? userId
  }) async {
    if (userId == null) return;

    final userRef = instance.collection('users').doc(userId);

    await instance.collection('expenses').add({
      'createdAt': FieldValue.serverTimestamp(),
      'creator': userRef,
      "products": [],
      "total":   0
    });
  }


  Future<void> updateExpense({ProductExtraDetails? productExtraDetails}) async {
    final doc = await _expense?.reference.get();
    final data = doc?.data() as Map<String, dynamic>?;

    final products = List<Map<String, dynamic>>.from(data?["products"] ?? []);
    products.add({
      "product": productExtraDetails?.productReference,
      "total": productExtraDetails?.price ?? 0,
    });

    await _expense?.reference.update({
      "products": products,
      "total": FieldValue.increment(productExtraDetails?.price ?? 0),
    });
  }


}