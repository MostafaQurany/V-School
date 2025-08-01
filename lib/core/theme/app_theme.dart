import 'package:flutter/material.dart';
import 'package:v_school/core/theme/app_bar_themes.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/theme/app_text_field_theme.dart';
import 'package:v_school/core/theme/app_text_style.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.secondary,
      onSecondary: AppColors.white,
      error: AppColors.error,
      onError: AppColors.white,
    ),
    useMaterial3: true,
    appBarTheme: AppBarThemes.appBarLightTheme,
    textTheme: AppTextStyle.lightTextTheme,
    inputDecorationTheme: AppTextFieldTheme.inputDecorationLightTheme(),
  );
}
