import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox wSpace(double w) => SizedBox(
      width: w.w,
    );
SizedBox hSpace(double h) => SizedBox(
      height: h.h,
    );
SizedBox bothSpace(
  double h,
  double w,
) =>
    SizedBox(
      height: h.h,
      width: w.w,
    );
