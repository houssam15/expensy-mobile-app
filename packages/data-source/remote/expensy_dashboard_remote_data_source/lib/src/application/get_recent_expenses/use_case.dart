import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class ExpensyDashboardRemoteDataSourceGetRecentExpensesUseCase {

  Future<ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse> execute(ExpensyDashboardRemoteDataSourceGetRecentExpensesRequest request) async {

    ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse response = ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse();

    try{
      var instance = FirebaseFirestore.instance;
      var collection = instance.collection("expenses");
      var document = await collection.orderBy("createdAt",descending: true).get();

      response.addMetaData(instance);

      response.setItems(await ExpensyExpense.toList(document.docs));

    }on ExpensyFirebaseFirestoreException catch (e){

      response.addMetaData(e);

      switch(e.getCode()){
        case ExpensyFirebaseFirestoreExceptionCode.canGetDocuments: response.setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors.cantGetDocument);
        case ExpensyFirebaseFirestoreExceptionCode.collectionNotFound: response.setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors.collectionNotFound);
        default : response.setIsHaveUnknownError(true);
      }

    }catch(err){

      response..addMetaData(err)..setIsHaveUnknownError(true);

    }

    return response;

  }

}
