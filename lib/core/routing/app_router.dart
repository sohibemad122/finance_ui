import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/feature/CreateNewPassword/ui/create_new_password.dart';
import 'package:finance_ui/feature/forgotPass/ui/otp_verification.dart';
import 'package:finance_ui/feature/forgotPass/ui/forgot_pass.dart';
import 'package:finance_ui/feature/login/ui/login_page.dart';
import 'package:finance_ui/feature/register/ui/register_page.dart';
import 'package:finance_ui/feature/welcome/ui/welcome_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.welcomePage:
        return MaterialPageRoute(builder: (_) => const WelcomePage());

      case Routes.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case Routes.registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());

      case Routes.forgotPassPage:
        return MaterialPageRoute(builder: (_) => const ForgotPass());

      case Routes.otpVerificationPage:
        return MaterialPageRoute(builder: (_) => const OtpVerification());

      case Routes.createNewPassword:
        return MaterialPageRoute(builder: (_) => const CreateNewPassword());

      default:
        return null;
    }
  }
}
