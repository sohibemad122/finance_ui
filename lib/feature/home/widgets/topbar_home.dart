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
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Row(
        children: [
          _buildAvatar(),
          horizontalSpace(11),
          _buildWelcomeText(),
          const Spacer(),
          _buildNotificationIcon(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/sohib.png',
          fit: BoxFit.cover, // 👈 أهم سطر
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome back', style: TextStyles.font12neutral60medium),
        Text('Sohib Emad', style: TextStyles.font18neutral100semibold),
      ],
    );
  }

  Widget _buildNotificationIcon() {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.neutral10,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/Notification.png',
          width: 18.w,
          height: 20.h,
        ),
      ),
    );
  }
}
