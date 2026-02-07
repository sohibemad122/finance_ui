import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hinttext;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hinttext,
    this.isObscureText,
    this.suffixIcon,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,

        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 20.w, horizontal: 18.w),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.mainAppColor, width: 0.9),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppColors.lightWhite, width: 0.8),
            ),

        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(8),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(8),
        ),
        hintStyle: hintStyle ?? TextStyles.font15GrayBold,
        hintText: hinttext,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.darkGray,
        fillColor: AppColors.lightWhite2,
        filled: true,
      ),
      cursorColor: AppColors.mainAppColor,
      obscureText: isObscureText ?? false,
      style: TextStyles.font17DarkBold,

      validator: (value) {
        return validator(value);
      },
    );
  }
}
