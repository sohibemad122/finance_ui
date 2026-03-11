import 'package:finance_ui/feature/login/data/model/login_request_model.dart';
import 'package:finance_ui/feature/login/data/networking/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final AuthService _authService;

  AuthRepo(this._authService);

  Future<User?> login(LoginRequestModel login) async {
    try {
      final credential = await _authService.login(
        email: login.email,
        password: login.password,
      );

      return credential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception(_handleFirebaseError(e));
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }

  String _handleFirebaseError(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No user found for this email';

      case 'wrong-password':
        return 'Wrong password';

      case 'invalid-email':
        return 'Invalid email format';

      case 'user-disabled':
        return 'This account has been disabled';

      default:
        return 'Login failed';
    }
  }
}