import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expensy_firebase/src/models/models.dart';
import 'expensy_firebase_firestore_exception.dart';

class ExpensyFirebaseStore {

  //Firebase auth instance
  FirebaseFirestore ? _firebaseStore;
  bool _hasError = false;
  CollectionReference<Map<String, dynamic>>? _loadedCollection;
  //Contain multiple documents
  QuerySnapshot<Map<String, dynamic>>? _querySnapshot;
  Query<Map<String, dynamic>>? _query;

  //Initialize firebase store
  void initializeFirebaseStore() => _firebaseStore ??= FirebaseFirestore.instance;

  bool hasError() => _hasError;
  QuerySnapshot<Map<String, dynamic>>? getDocument() => _querySnapshot;

  void loadCollection(String name){
    try{
      _loadedCollection = _firebaseStore?.collection(name);
    }catch(err){
      throw ExpensyFirebaseFirestoreException()
        ..setCode(ExpensyFirebaseFirestoreExceptionCode.collectionNotFound);
    }
  }

  Future<void> filterAndLoadDocument({
    List<WhereClause> whereClauses = const [],
    int limit = -1,
  }) async {
    try {

      _query = _loadedCollection!;

      for (var clause in whereClauses) {
        _query = _query?.where(
          clause.field,
          isEqualTo: clause.isEqualTo,
          isNotEqualTo: clause.isNotEqualTo,
          isLessThan: clause.isLessThan,
          isLessThanOrEqualTo: clause.isLessThanOrEqualTo,
          isGreaterThan: clause.isGreaterThan,
          isGreaterThanOrEqualTo: clause.isGreaterThanOrEqualTo,
          arrayContains: clause.arrayContains,
          arrayContainsAny: clause.arrayContainsAny,
          whereIn: clause.whereIn,
          whereNotIn: clause.whereNotIn,
          isNull: clause.isNull,
        );
      }

      if (limit > 0) {
        _query = _query?.limit(limit);
      }

      _querySnapshot = await _query?.get();

    } catch (err) {

      throw ExpensyFirebaseFirestoreException()
        ..setCode(ExpensyFirebaseFirestoreExceptionCode.cantFilterDocuments);
    }
  }



  Future<void> loadDocument() async {
    try{

      _querySnapshot = await _loadedCollection?.get();

    }catch(err){

      throw ExpensyFirebaseFirestoreException()
      ..setCode(ExpensyFirebaseFirestoreExceptionCode.canGetDocuments);

    }
  }

  DocumentReference<Map<String, dynamic>> getDocumentReference({
    required String collectionName,
    required String documentId,
  }) {
    if (_firebaseStore == null) {
      initializeFirebaseStore();
    }

    return _firebaseStore!
        .collection(collectionName)
        .doc(documentId);
  }


}