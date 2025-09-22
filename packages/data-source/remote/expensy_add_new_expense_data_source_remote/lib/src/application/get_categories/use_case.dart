import 'package:expensy_common/expensy_common.dart';
import "../../config/config.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class GetCategoriesUseCase {
  FirebaseFirestore? _instance;

  FirebaseFirestore get instance {
    _instance ??= FirebaseFirestore.instance;
    return _instance!;
  }

  Future<List<DocumentReference>> loadCategories() async {
    final snapshot = await instance.collection('product_category').get();
    return snapshot.docs.map((doc) => doc.reference).toList();
  }

  Future<GetCategoriesResponse> execute(GetCategoriesRequest request) async{
    final response = GetCategoriesResponse();
    var config = Config();
    try{

        for(DocumentReference categoryRef in await loadCategories()){
          response.addCategory = await ExpensyExpenseCategory.fromJson(categoryRef);
        }

    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }

}