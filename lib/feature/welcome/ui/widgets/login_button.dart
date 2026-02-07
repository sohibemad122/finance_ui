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
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: AppTextButton(
        buttonWidth: 331.w,
        buttonHeight: 56.h,
        buttonText: "Login",
        textStyle: TextStyles.font15whiteSemiBold,
        onPressed: () => context.pushNamed(Routes.loginPage),
      ),
    );
  }
}
