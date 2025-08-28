import 'package:expensy_common/expensy_common.dart';
import 'package:expensy_firebase/expensy_firebase.dart';
import 'package:flutter/foundation.dart';
import "../../models/models.dart";

part "request.dart";
part "response.dart";

class ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesUseCase {

  Future<ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponse> execute(ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesRequest request) async {
    ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponse response = ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponse();

    try{
      var instance = ExpensyFirebase.getFirebaseStore()..loadCollection("expenses");

      await instance.loadDocument();

      response.addMetaData(instance);

      instance.filterAndLoadDocument(
        whereClauses: [
          WhereClause(field: "id",isEqualTo: request.getExpenseId())
        ],
        limit: 1
      );

      var query = instance.getDocument();

      if(query != null && query.docs.isNotEmpty){
        var data = query.docs.first.data();
      }


    }on ExpensyFirebaseFirestoreException catch (e){

      response.addMetaData(e);

      switch(e.getCode()){
        case ExpensyFirebaseFirestoreExceptionCode.canGetDocuments: response.setError(ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponseErrors.cantGetDocument);
        case ExpensyFirebaseFirestoreExceptionCode.collectionNotFound: response.setError(ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponseErrors.collectionNotFound);
        default : response.setIsHaveUnknownError(true);
      }

    }catch(err){

      response..addMetaData(err)..setIsHaveUnknownError(true);

    }

    return response;
  }

}