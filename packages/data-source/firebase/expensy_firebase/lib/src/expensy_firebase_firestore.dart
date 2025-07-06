import 'package:cloud_firestore/cloud_firestore.dart';

class ExpensyFirebaseStore {

  //Firebase auth instance
  FirebaseFirestore ? _firebaseStore;
  bool _hasError = false;


  bool hasError(){
    return _hasError;
  }

  //Initialize firebase store
  void initializeFirebaseStore(){
    _firebaseStore ??= FirebaseFirestore.instance;
  }

  CollectionReference<Map<String, dynamic>>? getCollection(String name) => _firebaseStore?.collection(name);

}


