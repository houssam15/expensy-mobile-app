import 'package:expensy_common/expensy_common.dart';
import '../../../expensy_add_new_expense_data_source_remote.dart';
import "../../config/config.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class AddProductToExpenseUseCase extends CommonUseCase{

  DocumentReference? _currentExpense;

  Future<void> loadCurrentExpense() async {
    final now = DateTime.now();
    final expenseRef = instance.collection('expenses')
                 .where("createdAt",isGreaterThanOrEqualTo: DateTime(now.year, now.month, now.day),isLessThanOrEqualTo: DateTime(now.year, now.month, now.day, 23, 59, 59))
                 .where("creator",isEqualTo: user)
                 .limit(1);
    final expenseSnap = await expenseRef.get();
    _currentExpense =  expenseSnap.docs.firstOrNull?.reference;
  }

  Future<void> addProductToExpense(ProductExtraDetails? productExtraDetails) async {
    final doc = await _currentExpense?.get();
    final data = doc?.data() as Map<String, dynamic>?;
    final products = List<Map<String, dynamic>>.from(data?["products"] ?? []);
    products.add({
      "product": productExtraDetails?.productReference,
      "total": productExtraDetails?.price ?? 0,
    });
    await _currentExpense?.update({
      "products": products,
      "total": FieldValue.increment(productExtraDetails?.price ?? 0),
    });
  }

  Future<AddProductToExpenseResponse> execute(AddProductToExpenseRequest request) async {
    final response = AddProductToExpenseResponse();
    var config = Config();
    try{
      //Get current user by user id
      loadCurrentUser(request.currentUser?.getUserId());
      //load current expense by user id and created at
      await loadCurrentExpense();
      //check if expense exist
      if(_currentExpense == null){
        //expense doesn't exist => create new one
        //I should throw error here because expense is created in add_new_expense step
        throw Exception("Expense not found");
      }
      //expense should exist here
      //load product reference
      request.productExtraDetails?.productReference = instance.collection('products').doc(request.productExtraDetails?.productId);
      //add product to expense
      await addProductToExpense(request.productExtraDetails);
    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }

}