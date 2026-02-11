import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/feature/home/widgets/back_botton.dart';
import 'package:finance_ui/feature/home/widgets/fi_chart_custom.dart';
import 'package:finance_ui/feature/home/widgets/services_money.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
          child: Column(
            children: [
              const BackBottonAndAppBar(text: 'Reload'),
              verticalSpace(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jan 28 - Feb 11, 2026',
                    style: TextStyles.font14neutral60medium,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFBFC7FF),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Monthly',
                          style: TextStyles.font14neutral00medium,
                        ),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(15),

              const FiChartCustom(),
              verticalSpace(15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ServicesMoney(
                    image: 'assets/images/Download.png',
                    title: "15000 EG",
                    subTitle: 'Income',
                  ),

                  ServicesMoney(
                    image: 'assets/images/Upload.png',
                    title: "35000 EG",
                    subTitle: 'Outcome',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
