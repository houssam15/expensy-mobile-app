import "package:expensy_common/expensy_common.dart";
import "package:flutter/foundation.dart";
import "../../models/models.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class GetExpenseDetailsUseCase {
  Future<GetExpenseDetailsResponse> execute(GetExpenseDetailsRequest request) async {
    GetExpenseDetailsResponse response = GetExpenseDetailsResponse();
    try{
      var instance = ExpensyFirebase.getFirebaseStore()..loadCollection("expenses");

      // Directly load by document ID
      await instance.loadDocumentById(request.expenseId);

      var document = instance.documentSnapshot;

      response..createdAt = document?.get("createdAt").toDate();

      var total = double.tryParse((document?.get("total")).toString());

      for(var product in document?.get("products")){
          var cr = await product["product"].get();
          var pc = await cr.get("category").get();

          var p = ExpensyProduct()
            ..setName(cr.get("name"))
            ..setDescription(cr.get("description"))
            ..setMainPictureUrl(cr.get("mainPictureUrl"));

          var ep = ExpensyExpenseProduct()
            ..setProduct(p)
            ..setTotal(double.tryParse(product["total"].toString()));

          double pt = (double.tryParse(product["total"].toString()) ?? 0);

          var perc = total == null || total <= 0
              ? null
              : pt * 100 / total;

          var existedCp = response.findCategoryProductsByName(pc.get("name"));

          if(existedCp != null){
            existedCp
              ..addProduct(ep)
              ..categoryTotal = (existedCp.categoryTotal ?? 0) + pt;
            var existedCt = response.findCategoryByTotalByName(pc.get("name"));
            existedCt?.percentage = (existedCt.percentage ?? 0) + (perc ?? 0);
            existedCt?.total = (existedCt.total ?? 0) + pt;
            continue;
          }

          //calculate category products
          var ec = ExpensyExpenseCategory()
                   ..setName(pc.get("name"))
                   ..setDescription(pc.get("description"))
                   ..setCategoryPictureLink(pc.get("categoryPictureLink"));

          CategoryProducts cp = CategoryProducts()
                                ..category = ec
                                ..categoryTotal = pt
                                ..addProduct(ep);

          //initialize category by total
          var ct = CategoryByTotal()
            ..name = pc.get("name")
            ..total = double.tryParse(product["total"].toString())
            ..percentage = perc;


          response
            ..addCategoryProducts(cp)
            ..addCategoryByTotal(ct);
      }

    }on ExpensyFirebaseFirestoreException catch(e){
      response
        ..addMetaData(e)
        ..error = GetExpenseDetailsResponseErrors.cantGetDocumentDetails;
    }catch(err){
      if(kDebugMode) print(err);
      rethrow;
    }

    return response;
  }
}