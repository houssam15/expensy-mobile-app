import 'package:expensy_common/expensy_common.dart';
import "package:expensy_firebase/expensy_firebase.dart";
import "../../config/config.dart";
import "package:equatable/equatable.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class AddNewExpenseUseCase {

  Future<AddNewExpenseResponse> execute(AddNewExpenseRequest request) async{
    var response = AddNewExpenseResponse();
    var config = Config();
    try{
      //check category
      var category = await loadCategoryById(request.categoryId);
      //check product
      var product = await loadProductById(request.productId);
      if(category == null || product == null) throw Exception("Product or category not found !");
      //check if expense already created
      var currentUser = await getCurrentUser();
      var expense = await loadCurrentExpense(
        userId: currentUser?.getUserId(),
      );
      if(expense == null){
        //create new expense
        await createNewExpense(
          productRef: product,
          total: request.price
        );
      }else{
        //update current expense

      }
    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }

  Future<DocumentReference?> loadCategoryById(String? id) async{
      var instance = ExpensyFirebase.getFirebaseStore().getInstance();
      final categoryRef = instance?.collection('product_category').doc(id);
      return categoryRef;
  }

  Future<DocumentReference?> loadProductById(String? id) async{
      var instance = ExpensyFirebase.getFirebaseStore().getInstance();
      final productRef = instance?.collection('products').doc(id);
      return productRef;
  }

  Future<String?> loadCurrentExpense({
    String? userId,
  }) async {
    var expenses = ExpensyFirebase.getFirebaseStore()..loadCollection("expenses");
    final now = DateTime.now();
    await expenses.filterAndLoadDocument(
      whereClauses: [
        WhereClause(
            field: "createdAt",
            isGreaterThanOrEqualTo: DateTime(now.year, now.month, now.day),
            isLessThanOrEqualTo: DateTime(now.year, now.month, now.day, 23, 59, 59)
        ),
        WhereClause(
            field: "creator",
            isEqualTo: userId
        )
      ],
      limit: 1
    );
    var snapshot = expenses.getDocument();
    var expense = snapshot?.docs.firstOrNull;
    return expense?.id;
  }

  Future<void> createNewExpense({
    String? userId,
    DocumentReference? productRef,
    double? total
  }) async {
    var instance = ExpensyFirebase.getFirebaseStore().getInstance();
    final userRef = instance?.collection('users').doc(userId);
    if(userRef==null) return;
    await instance?.collection('expenses').add({
      'createdAt': FieldValue.serverTimestamp(),
      'creator':userRef,
      "products":[
        {
          "product": productRef,
          "total": total
        }
      ],
      "total":total
    });
  }

  Future<User?> getCurrentUser() async{
    return ExpensyFirebase.getFirebaseAuth().getCurrentUser();
  }

}