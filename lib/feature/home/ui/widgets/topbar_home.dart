import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopbarHome extends StatelessWidget {
  const TopbarHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: Row(
        children: [
          Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1),
            ),
            child: Image.asset(
              'assets/images/facebook.png',
              fit: BoxFit.fitHeight,
              height: 48.h,
              width: 48.w,
            ),
          ),
          horizontalSpace(11),
          Column(
            children: [
              Text('Welcome back', style: TextStyles.font12neutral60medium),
              Text('Sohib Emad', style: TextStyles.font18neutral100semibold),
            ],
          ),

          const Spacer(),

          Container(
            height: 48.h,
            width: 48.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.neutral10,
              border: Border.all(color: Colors.grey.shade300, width: 0.7),
            ),
            child: Icon(
              Icons.notifications,
              size: 24.sp,
              color: AppColors.mainAppColor,
            ),
          ),
        ],
      ),
    );
  }
}
