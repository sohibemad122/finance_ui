import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/routes.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/dont_have_account_and_already_have_account.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController otpController;

  @override
  void initState() {
    super.initState();
    otpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
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
        
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  enableActiveFill: true,
                  textStyle: TextStyles.font22mainappcolorBold,
                  pinTheme: PinTheme(
                    fieldWidth: 70.w,
                    fieldHeight: 60.h,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    selectedColor: AppColors.mainAppColor,
                    activeColor: AppColors.mainAppColor,
                    borderWidth: 1,
                    inactiveColor: AppColors.gray,
                    inactiveFillColor: AppColors.lightWhite2,
                    selectedFillColor: AppColors.white,
                    activeFillColor: AppColors.lightWhite2,
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                ),
        
                verticalSpace(38),
        
                Center(
                  child: AppTextButton(
                    buttonWidth: 331.w,
                    buttonHeight: 56.h,
                    buttonText: 'Verify',
                    textStyle: TextStyles.font15whiteSemiBold,
                    onPressed: () =>
                        context.pushNamed(Routes.createNewPassword),
                  ),
                ),
                const Spacer(),
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
                verticalSpace(26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
