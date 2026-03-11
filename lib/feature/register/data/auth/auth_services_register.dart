import 'package:firebase_auth/firebase_auth.dart';

class AuthServicesRegister {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password:password,
      
    );
    return credential;
  }
}
