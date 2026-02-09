import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          AppTextFormField(hinttext: 'Enter your email', validator: (value) {}),
          verticalSpace(20),
          AppTextFormField(
            hinttext: 'Enter your password',
            suffixIcon: Icon(Icons.visibility, size: 22),
            isObscureText: true,
            validator: (value) {},
          ),
          verticalSpace(15),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () => context.pushNamedAndRemoveUntil(
                  Routes.forgotPassPage,
                  predicate: (Route<dynamic> route) {
                    return false;
                  },
                ),
                child: Text(
                  'Forgot password?',
                  style: TextStyles.font14DarkGraySemiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
