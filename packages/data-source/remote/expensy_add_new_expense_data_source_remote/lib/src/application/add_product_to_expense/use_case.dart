import 'package:expensy_common/expensy_common.dart';
import '../../../expensy_add_new_expense_data_source_remote.dart';
import "../../config/config.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class AddProductToExpenseUseCase extends CommonUseCase{

  DocumentReference? _currentExpense;

  Future<void> loadCurrentExpenseOrCreateNew() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
    final expenseRef = instance.collection('expenses')
        .where("createdAt", isGreaterThanOrEqualTo: startOfDay)
        .where("createdAt", isLessThanOrEqualTo: endOfDay)
        .where("creator", isEqualTo: user)
        .limit(1);
    final expenseSnap = await expenseRef.get();
    if (expenseSnap.docs.isNotEmpty) {
      _currentExpense = expenseSnap.docs.first.reference;
    } else {
      // Create a new expense document
      final newExpense = await instance.collection('expenses').add({
        "createdAt": now,
        "creator": user,
        // Add any other default fields required
        "items": [],
        "total": 0,
      });
      _currentExpense = newExpense;
    }
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
      await loadCurrentExpenseOrCreateNew();
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