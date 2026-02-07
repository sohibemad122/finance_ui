import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonContainer extends StatelessWidget {
  const BackButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
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
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.mainAppColor,
            size: 20.sp,
          ),
        ),
      ),
    );
  }
}
