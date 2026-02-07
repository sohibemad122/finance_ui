import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:finance_ui/core/widgets/dont_have_account_and_already_have_account.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(welcomeText: 'Forgot Password?'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                style: TextStyles.font16GrayMedium,
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: AppTextFormField(
                hinttext: 'Enter your email',
                validator: (value) {},
              ),
            ),
            verticalSpace(30),

            Center(
              child: AppTextButton(
                buttonWidth: 331.w,
                buttonHeight: 56.h,
                buttonText: 'Send Code',
                textStyle: TextStyles.font15whiteSemiBold,
                onPressed: () {},
              ),
            ),
            verticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DontHaveAccountAndAlreadyHaveAccount(
                  firstText: 'Remember Password?',
                  secondText: 'Login',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
