import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? horizontalpadding;
  final double? verticalpadding;
  final double? buttonWidth;
  final double? fontsize;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.horizontalpadding,
    this.verticalpadding,
    this.buttonWidth,
    this.buttonHeight,
    this.fontsize,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        style: ButtonStyle(
          // ignore: deprecated_member_use
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              side: BorderSide(
                color: borderColor ?? Colors.transparent,
                width: borderWidth ?? 1,
              ),
            ),
          ),
          // ignore: deprecated_member_use
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor ?? AppColors.mainAppColor,
          ),

          // ignore: deprecated_member_use
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              vertical: verticalpadding?.h ?? 16.h,
              horizontal: horizontalpadding?.w ?? 16.w,
            ),
          ),
          // ignore: deprecated_member_use
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 16.h),
          ),
        ),
        onPressed: onPressed,
        child: Text(buttonText, style: textStyle),
      ),
    );
  }
}
