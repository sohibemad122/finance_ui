import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:finance_ui/core/widgets/social_media_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldCustomRegister extends StatelessWidget {
  const TextFormFieldCustomRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          AppTextFormField(hinttext: 'Username', validator: (value) {}),
          verticalSpace(20),
          AppTextFormField(hinttext: 'Email', validator: (value) {}),
          verticalSpace(20),
          AppTextFormField(
            hinttext: 'Password',
            suffixIcon: Icon(Icons.visibility, size: 22),
            isObscureText: true,
            validator: (value) {},
          ),
          verticalSpace(20),
          AppTextFormField(
            hinttext: 'Confirm password',
            suffixIcon: Icon(Icons.visibility, size: 22),
            isObscureText: true,
            validator: (value) {},
          ),
          verticalSpace(30),
          AppTextButton(
            buttonWidth: 331.w,
            buttonHeight: 56.h,
            buttonText: 'Register',
            textStyle: TextStyles.font15whiteSemiBold,
            onPressed: () {},
          ),
          verticalSpace(30),
          SocialMediaLogin(loginOrRegisterText: 'Or Register with'),
        ],
      ),
    );
  }
}
