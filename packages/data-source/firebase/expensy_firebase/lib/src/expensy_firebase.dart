import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'expensy_firebase_auth.dart';
import 'expensy_firebase_firestore.dart';

class ExpensyFirebase{

  //track FirebaseCore initialisation state
  static bool isInitialized = false;

  //Manage firebaseAuth
  static ExpensyFirebaseAuth? _expensyFirebaseAuth;
  //Manage firebaseAuth
  static ExpensyFirebaseStore? _expensyFirebaseStore;

  //Initialize data
  ExpensyFirebase(){
    if(!isInitialized) throw Exception("Firebase not initialized , please call ExpensyFirebase.ensureInitialization() in the main function");
  }

  //Initialize firebase core
  static ensureInitialization() async{
    await Firebase.initializeApp();
  }

  //Get firebase auth instance
  static ExpensyFirebaseAuth getFirebaseAuth(){
    _expensyFirebaseAuth ??= ExpensyFirebaseAuth()..initializeFirebaseAuth();
    return _expensyFirebaseAuth!;
  }

  //Get firebase store instance
  static ExpensyFirebaseStore getFirebaseStore(){
    _expensyFirebaseStore ??= ExpensyFirebaseStore()..initializeFirebaseStore();
    return _expensyFirebaseStore!;
  }

}