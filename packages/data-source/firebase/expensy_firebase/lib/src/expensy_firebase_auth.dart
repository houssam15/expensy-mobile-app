import 'package:firebase_auth/firebase_auth.dart' hide User;
import "expensy_firebase_auth_exception.dart";
import "package:google_sign_in/google_sign_in.dart";
import 'package:expensy_common/expensy_common.dart' ;
class ExpensyFirebaseAuth {
  //Firebase auth instance
  FirebaseAuth? _firebaseAuth;
  bool _hasError = false;


  bool hasError(){
    return _hasError;
  }

  //Initialize firebase auth
  void initializeFirebaseAuth(){
    _firebaseAuth ??= FirebaseAuth.instance;
  }

  //get authentication state
  //Stream<User?>? getAuthStateChanges() => _firebaseAuth?.authStateChanges();

  //Sign in
  Future<void> signWithEmailAndPassword({
    required String email,
    required String password
  }) async {
    await _firebaseAuth?.signInWithEmailAndPassword(
        email: email,
        password: password
    );
  }

  Future<void> signInWithCredentialsForGoogle({
    String? accessToken,
    String? idToken
  }) async {
    await _firebaseAuth?.signInWithCredential(GoogleAuthProvider.credential(
      accessToken: accessToken,
      idToken: idToken
    ));
  }

  Future<void> signInWithCredentialsForFacebook({
    String? token
  }){
    return FirebaseAuth.instance.signInWithCredential(FacebookAuthProvider.credential(token.toString()));
  }

  Future<void> createUserWithEmailAndPassword({
      required String email,
      required String password
  }) async {
    try{
      await _firebaseAuth?.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    }on FirebaseAuthException catch(err){
      ExpensyFirebaseAuthException exception = ExpensyFirebaseAuthException();
      switch(err.code){
        case "email-already-in-use": exception.setCode(ExpensyFirebaseAuthExceptionCode.emailAlreadyInUse);
        case "invalid-email": exception.setCode(ExpensyFirebaseAuthExceptionCode.invalidEmail);
        case "weak-password": exception.setCode(ExpensyFirebaseAuthExceptionCode.weakPassword);
        default : exception.setCode(ExpensyFirebaseAuthExceptionCode.unknown);
      }
      throw exception;
    }
  }

  Future<void> createUserWithGoogle() async {
    ExpensyFirebaseAuthException exception = ExpensyFirebaseAuthException();

    try {
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      if (gUser == null) {
        exception.setCode(ExpensyFirebaseAuthExceptionCode.userCancelGoogleSignIn);
        throw exception;
      }

      final GoogleSignInAuthentication gAuth = await gUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      await _firebaseAuth?.signInWithCredential(credential);

    } on FirebaseAuthException catch (err) {
      switch (err.code) {
        case "account-exists-with-different-credential":
          exception.setCode(ExpensyFirebaseAuthExceptionCode.emailAlreadyInUse);
          break;
        case "invalid-credential":
          exception.setCode(ExpensyFirebaseAuthExceptionCode.invalidCredential);
          break;
        case "operation-not-allowed":
          exception.setCode(ExpensyFirebaseAuthExceptionCode.operationNotAllowed);
          break;
        case "user-disabled":
          exception.setCode(ExpensyFirebaseAuthExceptionCode.userDisabled);
          break;
        case "network-request-failed":
          exception.setCode(ExpensyFirebaseAuthExceptionCode.networkError);
          break;
        default:
          exception.setCode(ExpensyFirebaseAuthExceptionCode.unknown);
          break;
      }
      throw exception;
    } catch (e) {
      // Any other unexpected errors (like null pointer, platform errors, etc.)
      exception.setCode(ExpensyFirebaseAuthExceptionCode.unknown);
      throw exception;
    }
  }


  Future<void> signOut() async {
      await _firebaseAuth?.signOut();
  }

// Get the current user
  User? getCurrentUser() {
    final firebaseUser = _firebaseAuth?.currentUser;
    if (firebaseUser == null) return null;

    return User()
      ..setFullName(firebaseUser.displayName)
      ..setEmail(firebaseUser.email);
  }

  Stream<User?> authStateChanges() {
    return _firebaseAuth!.authStateChanges().map((firebaseUser) {
      if (firebaseUser == null) return null;

      return User()
        ..setFullName(firebaseUser.displayName)
        ..setEmail(firebaseUser.email);
    });
  }

}