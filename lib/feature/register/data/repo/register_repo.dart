import 'dart:developer';

import 'package:finance_ui/feature/register/data/auth/auth_services_register.dart';
import 'package:finance_ui/feature/register/data/model/register_request_model.dart';
import 'package:finance_ui/firestore_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepo {
  final AuthServicesRegister authServicesRegister;
  final FirestoreServices firestoreServices;

  RegisterRepo({
    required this.authServicesRegister,
    required this.firestoreServices,
  });
  Future<User?> register(RegisterRequestModel register) async {
    try {
      final credential = await authServicesRegister.register(
        name: register.name,
        email: register.email,
        password: register.password,
      );
      final user = credential.user;
      if (user != null) {
        await firestoreServices.setData(
          path: 'users/${user.uid}',
          data: register.toJson(),
        );
        log('user data saved: ${register.toJson()}');
      } else {
        log('User is null after registration');
      }
      return user;
    } catch (e) {
      log('Error in register: $e');
      rethrow;
    }
  }
}
