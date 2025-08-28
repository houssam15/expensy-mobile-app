import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensyExpensesListRemoteDataSourceGetExpensesListUseCase {

  Future<ExpensyExpensesListRemoteDataSourceGetExpensesListResponse> execute(ExpensyExpensesListRemoteDataSourceGetExpensesListRequest request) async {

    ExpensyExpensesListRemoteDataSourceGetExpensesListResponse response = ExpensyExpensesListRemoteDataSourceGetExpensesListResponse();

    try{
      var instance = ExpensyFirebase.getFirebaseStore()..loadCollection("expenses");

      await instance.loadDocument();

      response.addMetaData(instance);

      response.setItems(await ExpensyExpense.toList(instance.getDocument()?.docs));

    }on ExpensyFirebaseFirestoreException catch (e){

      response.addMetaData(e);

      switch(e.getCode()){
        case ExpensyFirebaseFirestoreExceptionCode.canGetDocuments: response.setError(ExpensyExpensesListRemoteDataSourceGetExpensesListResponseErrors.cantGetDocument);
        case ExpensyFirebaseFirestoreExceptionCode.collectionNotFound: response.setError(ExpensyExpensesListRemoteDataSourceGetExpensesListResponseErrors.collectionNotFound);
        default : response.setIsHaveUnknownError(true);
      }

    }catch(err){

      response..addMetaData(err)..setIsHaveUnknownError(true);

    }

    return response;

  }

}
