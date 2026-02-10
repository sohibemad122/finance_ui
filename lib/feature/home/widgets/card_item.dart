import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  final String? cardName;
  final String? balance;
  final String? cardNumber;
  final String? expiryDate;
  final String? cardTypeImage;
  final Color? backgroundColor;

  const CardItem({
    super.key,
    this.cardName,
    this.balance,
    this.cardNumber,
    this.expiryDate,
    this.cardTypeImage,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 207.w,
      height: 263.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.mainAppColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(18.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardName ?? 'X-Card',
                      style: TextStyles.font12neutral0bold,
                    ),
                    Image.asset(
                      'assets/images/Group 1.png',
                      width: 52.w,
                      height: 16.h,
                    ),
                  ],
                ),

                const Spacer(),

                Text('Balance', style: TextStyles.font14neutral0medium),
                verticalSpace(10),
                Text(
                  balance ?? '23400 EG',
                  style: TextStyles.font24whitesemibold,
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardNumber ?? '****  3434',
                      style: TextStyles.font16whiteMedium,
                    ),
                    Text(
                      expiryDate ?? '12/28',
                      style: TextStyles.font12neutral0bold,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Decorations
          Positioned(
            bottom: -20.h,
            left: -20.w,
            child: Image.asset(
              'assets/images/Ellipse 14.png',
              width: 220.w,
              height: 220.h,
            ),
          ),
          Positioned(
            bottom: -10.h,
            left: -10.w,
            child: Image.asset(
              'assets/images/Ellipse 15.png',
              width: 153.w,
              height: 153.h,
            ),
          ),
        ],
      ),
    );
  }

}
