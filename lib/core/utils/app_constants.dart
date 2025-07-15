import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  // login role
  static String teacherLoginRole = "teacher";
  static String parentLoginRole = "parent";

  /// App Secure Storage constants
  static String userToken = "User_Token";
  static String saveUserKey = "Save_User_key";
  // screen padding
  static EdgeInsets screenPadding =
      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w);
  // animation Duration
  static int animationDuration250 = 250;
}
