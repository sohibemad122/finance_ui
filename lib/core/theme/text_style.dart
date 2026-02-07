import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/app_fonts.dart';
import 'package:finance_ui/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font15whiteSemiBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semibold,
  );


   static TextStyle font15DarkBlueSemiBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    color: AppColors.mainAppColor,
    fontWeight: FontWeightHelper.semibold,
  );
static TextStyle font17DarkBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 17.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font30DarkBlueBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30.sp,
    color: AppColors.mainAppColor,
    fontWeight: FontWeightHelper.bold,
  );
static TextStyle font15DarkBlueBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font15GrayBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    color: AppColors.gray,
    fontWeight: FontWeightHelper.medium,
  );

   static TextStyle font14DarkGraySemiBold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 14.sp,
    color: AppColors.darkGray,
    fontWeight: FontWeightHelper.semibold,
  );
   static TextStyle font15GmainAppColormedium = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    color: AppColors.mainAppColor,
    fontWeight: FontWeightHelper.medium,
  );
}
