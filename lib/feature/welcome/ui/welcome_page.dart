import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/feature/welcome/ui/widgets/continue_as_a_guest.dart';
import 'package:finance_ui/feature/welcome/ui/widgets/login_button.dart';
import 'package:finance_ui/feature/welcome/ui/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/generated.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 570.h,
              ),
              verticalSpace(21),
              const LoginButton(),
              verticalSpace(21),
              const RegisterButton(),
              verticalSpace(30),
              const ContinueAsAGuest(),
            ],
          ),
        ),
      ),
    );
  }
}
