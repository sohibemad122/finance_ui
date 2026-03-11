import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0.w),
      child: AppTextButton(
        buttonWidth: 331,
        buttonHeight: 70,
        buttonText: "Login",
        textStyle: TextStyles.font15whiteSemiBold,
        onPressed: () => context.pushNamed(Routes.loginPage),
      ),
    );
  }
}
