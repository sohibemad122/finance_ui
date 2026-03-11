import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:finance_ui/core/widgets/dont_have_account_and_already_have_account.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPass extends StatelessWidget {
  ForgotPass({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeText(welcomeText: 'Forgot Password?'),
                Padding(
                  padding: EdgeInsets.all(16.0.h),

                  child: Text(
                    'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                    style: TextStyles.font16GrayMedium,
                  ),
                ),
                verticalSpace(20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                  child: AppTextFormField(
                    hinttext: 'Enter your email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter email';
                      }
                      return null;
                    },
                  ),
                ),
                verticalSpace(30),

                Center(
                  child: AppTextButton(
                    buttonWidth: 331,
                    buttonHeight: 70,
                    buttonText: 'Send Code',
                    textStyle: TextStyles.font15whiteSemiBold,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.pushNamedAndRemoveUntil(
                          Routes.otpVerificationPage,
                          predicate: (Route<dynamic> route) {
                            return false;
                          },
                        );
                      }
                    },
                  ),
                ),
                verticalSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DontHaveAccountAndAlreadyHaveAccount(
                      firstText: 'Remember Password?',
                      secondText: 'Login',
                      onPressed: () => context.pushNamed(Routes.loginPage),
                    ),
                  ],
                ),
                verticalSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
