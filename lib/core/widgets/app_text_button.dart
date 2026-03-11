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
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? AppColors.mainAppColor,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular((borderRadius ?? 8).r),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 1,
            ),
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: verticalpadding?.h ?? 16.h,
            horizontal: horizontalpadding?.w ?? 16.w,
          ),
        ),
        fixedSize: buttonWidth != null && buttonHeight != null
            ? WidgetStateProperty.all(
                Size(buttonWidth!.w, buttonHeight!.h),
              )
            : null,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle.copyWith(fontSize: textStyle.fontSize?.sp),
      ),
    );
  }
}