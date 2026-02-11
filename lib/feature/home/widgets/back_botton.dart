import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackBottonAndAppBar extends StatelessWidget {
  const BackBottonAndAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            color: AppColors.neutral10,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.neutral30, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 24.sp,
              weight: 24.w,
              color: AppColors.neutral100,
            ),
          ),
        ),

        Text('All Cards', style: TextStyles.font18neutral100semibold),

        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.neutral30, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.more_horiz,
              size: 24.sp,
              weight: 24.w,
              color: AppColors.neutral100,
            ),
          ),
        ),
      ],
    );
  }
}
