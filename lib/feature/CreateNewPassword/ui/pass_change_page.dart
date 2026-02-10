import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PassChangePage extends StatelessWidget {
  const PassChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Sticker.png',
                width: 100.w,
                height: 100.h,
                fit: BoxFit.contain,
              ),

              verticalSpace(20),

              Text(
                'Password Changed!',
                style: TextStyles.font30DarkBlueBold,
                textAlign: TextAlign.center,
              ),

              verticalSpace(10),

              Text(
                'Your password has been changed\nsuccessfully.',
                style: TextStyles.font16GrayMedium,
                textAlign: TextAlign.center,
              ),

              verticalSpace(50),

              AppTextButton(
                buttonHeight: 56.h,
                buttonWidth: 331.w,
                buttonText: 'Back to Login',
                textStyle: TextStyles.font15whiteSemiBold,
                onPressed: () => context.pushNamed(Routes.loginPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
