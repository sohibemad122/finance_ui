import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
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
          padding: const EdgeInsets.all(18.0),
          child: GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              height: 41.h,
              width: 41.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.lightWhite, width: 1.5.w),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.mainAppColor,
                  size: 20.sp,
                ),
              ),
            ),
          ),
        ),
        verticalSpace(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text(
            'Welcome back!\nAgain!',
            style: TextStyles.font30DarkBlueBold,
          ),
        ),
      ],
    );
  }
}
