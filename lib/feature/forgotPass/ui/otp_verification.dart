import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/dont_have_account_and_already_have_account.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:finance_ui/feature/forgotPass/ui/widgets/otp_verification_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(welcomeText: 'OTP Verification'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Enter the verification code we just sent on your email address.',
                style: TextStyles.font16GrayMedium,
              ),
            ),
            verticalSpace(30),
            const OtpVerificationTextFiled(),
            verticalSpace(50),

            Center(
              child: AppTextButton(
                buttonWidth: 331.w,
                buttonHeight: 56.h,
                buttonText: 'Verification',
                textStyle: TextStyles.font15whiteSemiBold,
                onPressed: () {},
              ),
            ),
            verticalSpace(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DontHaveAccountAndAlreadyHaveAccount(
                  firstText: 'Didn’t received code?',
                  secondText: "Resend",
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
