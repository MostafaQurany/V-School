import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_assets.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextTheme lightTextTheme = TextTheme(
    /// font size : 16 , font weight : 400
    bodyLarge: _testStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),

    /// font size : 14 , font weight : 400
    bodyMedium: _testStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),

    /// font size : 12 , font weight : 400
    bodySmall: _testStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),

    /// font size : 28 , font weight : 600
    titleLarge: _testStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),

    /// font size :24 , font weight :600
    titleMedium: _testStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),

    /// font size : 20 , font weight : 600
    titleSmall: _testStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),

    /// font size : 18 , font weight : 500
    headlineLarge: _testStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),

    /// font size : 16 , font weight : 500
    headlineMedium: _testStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),

    /// font size : 14 , font weight : 500
    headlineSmall: _testStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    ),
  );

  static TextStyle _testStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: AppAssets.fontPoppins,
    );
  }
}
