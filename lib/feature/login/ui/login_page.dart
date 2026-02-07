import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/feature/login/ui/widgets/app_bar_and_welcome_text.dart';
import 'package:finance_ui/feature/login/ui/widgets/text_form_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarAndWelcomeText(),
          verticalSpace(50),
          TextFormFieldCustom(),
          verticalSpace(30),
          AppTextButton(
            buttonHeight: 56.h,
            buttonWidth: 331.w,
            buttonText: 'Login',
            textStyle: TextStyles.font15whiteSemiBold,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
