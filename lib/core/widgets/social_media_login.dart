import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaLogin extends StatelessWidget {
  final String? loginOrRegisterText;
  const SocialMediaLogin({super.key, this.loginOrRegisterText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(thickness: 0.8, indent: 10, endIndent: 10)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                '$loginOrRegisterText',

                style: TextStyles.font14DarkGraySemiBold,
              ),
            ),
            Expanded(child: Divider(thickness: 0.8, indent: 10, endIndent: 10)),
          ],
        ),
        verticalSpace(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 56.h,
                    width: 105.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.lightWhite,
                        width: 1.w,
                      ),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/facebook.png'),
                        height: 26.h,
                        width: 26.w,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 56.h,
                    width: 105.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.lightWhite,
                        width: 1.w,
                      ),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/google.png'),
                        height: 26.h,
                        width: 26.w,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 56.h,
                    width: 105.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.lightWhite,
                        width: 1.w,
                      ),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/ios.png'),
                        height: 26.h,
                        width: 26.w,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
