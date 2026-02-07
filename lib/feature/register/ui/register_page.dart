import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/widgets/dont_have_account_and_already_have_account.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:finance_ui/feature/register/ui/widget/text_form_field_custom_register.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              WelcomeText(welcomeText: 'Hello! Register to get started'),
              verticalSpace(30),
              TextFormFieldCustomRegister(),
              verticalSpace(30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DontHaveAccountAndAlreadyHaveAccount(
                    firstText: 'Already have an account?',
                    secondText: 'Login Now',
                    onPressed: () => context.pushNamed(Routes.loginPage),
                  ),
                ],
              ),
              verticalSpace(40),
            ],
          ),
        ),
      ),
    );
  }
}
