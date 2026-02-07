import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: AppTextButton(
        buttonWidth: 331.w,
        buttonHeight: 56.h,
        
        buttonText: "Register",
        backgroundColor: Colors.white,
        textStyle: TextStyles.font15DarkBlueSemiBold,
        borderColor: AppColors.mainAppColor,
        borderWidth: 1.2,
        onPressed: () {},
      ),
    );
  }
}
