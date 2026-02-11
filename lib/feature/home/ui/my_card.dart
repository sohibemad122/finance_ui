import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/feature/home/widgets/back_botton.dart';
import 'package:finance_ui/feature/home/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BackBottonAndAppBar(),
                verticalSpace(20),
                CardItem(height: 179.h, weight: 327.w, balance: '155,000 EG'),
                verticalSpace(20),
                CardItem(
                  height: 179.h,
                  weight: 327.w,
                  backgroundColor: AppColors.darkBlue,
                  balance: '78,000 EG',
                ),
                verticalSpace(20),
                CardItem(
                  height: 179.h,
                  weight: 327.w,
                  backgroundColor: AppColors.darkPurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
