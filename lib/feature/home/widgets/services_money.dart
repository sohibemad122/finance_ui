// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';

class ServicesMoney extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;
  const ServicesMoney({super.key, this.image, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 140.h,
        width: 156.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.neutral10,
          border: Border.all(color: AppColors.neutral30, width: 1),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: AppColors.neutral20,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Image.asset(
                  image ?? 'assets/images/Send.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text( title ?? 'Send money', style: TextStyles.font16Neutral100SemiBold),
            verticalSpace(5),
            Text( subTitle ?? 'Take acc to acc', style: TextStyles.font12neutral60medium),
          ],
        ),
      ),
    );
  }
}
