import 'package:flutter/material.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/theme/app_text_style.dart';

class AppBarThemes {
  static AppBarTheme appBarLightTheme = AppBarTheme(
    titleTextStyle: AppTextStyle.lightTextTheme.headlineMedium!
        .copyWith(color: AppColors.white),
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.white,
    iconTheme: IconThemeData(
      color: AppColors.white,
      size: 20,
    ),
    actionsIconTheme: IconThemeData(
      color: AppColors.white,
      size: 20,
    ),
  );
}
