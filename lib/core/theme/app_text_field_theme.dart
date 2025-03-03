import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';

class AppTextFieldTheme {
  static InputDecorationTheme inputDecorationLightTheme() =>
      InputDecorationTheme(
        suffixIconColor: AppColors.secondary,
        contentPadding: EdgeInsets.symmetric(
          vertical: 9.h,
          horizontal: 10.w,
        ),
        border: _inputBorder(AppColors.secondary),
        enabledBorder: _inputBorder(AppColors.secondary),
        errorBorder: _inputBorder(AppColors.error),
      );

  static InputBorder _inputBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.w),
        borderSide: BorderSide(
          color: color,
          width: 1.5,
        ),
      );
}
