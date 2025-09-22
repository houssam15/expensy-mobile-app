import 'package:cloud_firestore/cloud_firestore.dart';

class CommonUseCase {
  FirebaseFirestore? _instance;
  DocumentReference? _user;

  FirebaseFirestore get instance {
    _instance ??= FirebaseFirestore.instance;
    return _instance!;
  }

  DocumentReference? get user => _user;

  void loadCurrentUser(String? userId){
    _user = instance.collection('users').doc(userId);
  }


}