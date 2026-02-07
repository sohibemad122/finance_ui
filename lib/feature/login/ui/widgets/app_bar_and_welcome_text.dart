import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/feature/login/ui/widgets/back_button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarAndWelcomeText extends StatelessWidget {
  const AppBarAndWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: const BackButtonContainer(),
        ),
        verticalSpace(15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Welcome back!\nAgain!',
            style: TextStyles.font30DarkBlueBold,
          ),
        ),
      ],
    );
  }
}
