import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:finance_ui/core/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(welcomeText: 'Create new password'),
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),

              child: Text(
                'Your new password must be unique from those previously used.',
                style: TextStyles.font16GrayMedium,
              ),
            ),

            verticalSpace(30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: AppTextFormField(
                validator: (value) {},
                hinttext: 'New password',
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: AppTextFormField(
                validator: (value) {},
                hinttext: 'Confirm password',
              ),
            ),
            verticalSpace(50),

            Center(
              child: AppTextButton(
                buttonWidth: 331.w,
                buttonHeight: 56.h,
                buttonText: 'Reset Password',
                textStyle: TextStyles.font15whiteSemiBold,
                onPressed: () => context.pushNamedAndRemoveUntil(
                  Routes.passChangePage,
                  predicate: (Route<dynamic> route) {
                    return false;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
