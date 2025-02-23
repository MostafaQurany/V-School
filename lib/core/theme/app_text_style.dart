import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_assets.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: _testStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    bodyMedium: _testStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    bodySmall: _testStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
    titleLarge: _testStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    titleMedium: _testStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
    titleSmall: _testStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
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
