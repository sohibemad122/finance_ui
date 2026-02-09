import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:finance_ui/core/widgets/dont_have_account_and_already_have_account.dart';
import 'package:finance_ui/core/widgets/social_media_login.dart';
import 'package:finance_ui/feature/login/ui/widgets/text_form_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(welcomeText: 'Welcome back!\nAgain!'),
              verticalSpace(50),
              TextFormFieldCustom(),
              verticalSpace(30),
              Center(
                child: AppTextButton(
                  buttonHeight: 56.h,
                  buttonWidth: 331.w,
                  buttonText: 'Login',
                  textStyle: TextStyles.font15whiteSemiBold,
                  onPressed: () => context.pushNamedAndRemoveUntil(
                    Routes.homePage,
                    predicate: (Route<dynamic> route) {
                      return false;
                    },
                  ),
                ),
              ),
              verticalSpace(30),
              SocialMediaLogin(loginOrRegisterText: 'Or Login with'),
              verticalSpace(125),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DontHaveAccountAndAlreadyHaveAccount(
                    firstText: "Don't have an account? ",
                    secondText: "Register Now",
                    onPressed: () => context.pushNamed(Routes.registerPage),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
