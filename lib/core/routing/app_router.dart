import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/feature/CreateNewPassword/ui/create_new_password.dart';
import 'package:finance_ui/feature/CreateNewPassword/ui/pass_change_page.dart';
import 'package:finance_ui/feature/forgotPass/ui/otp_verification.dart';
import 'package:finance_ui/feature/forgotPass/ui/forgot_pass.dart';
import 'package:finance_ui/feature/home/ui/bttoon_navigation.dart';
import 'package:finance_ui/feature/login/data/networking/auth_service.dart';
import 'package:finance_ui/feature/login/data/repo/auth_repo.dart';
import 'package:finance_ui/feature/login/logic/login_cubit.dart';
import 'package:finance_ui/feature/login/ui/login_page.dart';
import 'package:finance_ui/feature/register/data/auth/auth_services_register.dart';
import 'package:finance_ui/feature/register/data/repo/register_repo.dart';
import 'package:finance_ui/feature/register/logic/register_cubit.dart';
import 'package:finance_ui/feature/register/ui/register_page.dart';
import 'package:finance_ui/feature/welcome/ui/welcome_page.dart';
import 'package:finance_ui/firestore_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.welcomePage:
        return MaterialPageRoute(builder: (_) => const WelcomePage());

      case Routes.loginPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(AuthRepo(AuthService())),
            child: const LoginPage(),
          ),
        );

      case Routes.registerPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RegisterCubit(
              authRepo: RegisterRepo(
                authServicesRegister: AuthServicesRegister(),
                firestoreServices: FirestoreServices.instance,
              ),
            ),
            child: const RegisterPage(),
          ),
        );

      case Routes.forgotPassPage:
        return MaterialPageRoute(builder: (_) =>  ForgotPass());

      case Routes.otpVerificationPage:
        return MaterialPageRoute(builder: (_) => const OtpVerification());

      case Routes.createNewPassword:
        return MaterialPageRoute(builder: (_) => const CreateNewPassword());

      case Routes.passChangePage:
        return MaterialPageRoute(builder: (_) => const PassChangePage());

      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const CustomBottomNavbar());
      default:
        return null;
    }
  }
}
