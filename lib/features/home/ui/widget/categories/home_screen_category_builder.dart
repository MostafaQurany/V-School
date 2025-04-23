import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/core/utils/app_assets.dart';

import 'category_item.dart';

class HomeScreenCategoryBuilder extends StatelessWidget {
  HomeScreenCategoryBuilder({super.key});

  final Map<String, String> data = {
    "Attendance": AppAssets.attendanceIcon,
    "Assignment": AppAssets.assignmentIconSvg,
    "Quiz": AppAssets.quizIconSvg,
    "Class Schedule": AppAssets.classScheduleIconSvg,
    "Result": AppAssets.resultIconSvg,
    "School Holiday": AppAssets.schoolHolidayIconSvg,
    "Exam Schedule": AppAssets.examScheduleIconSvg,
  };

  final navigationTaps = [
    Routes.attendanceScreen,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w), // Prevents cutting edges
      child: Wrap(
        spacing: 10.w,
        runSpacing: 10.h,
        children: List.generate(
          data.length,
          (index) => CategoryItem(
            isSvg: !(index == 0),
            icon: data[data.keys.elementAt(index)] ?? '',
            title: data.keys.elementAt(index),
            onTap: () => context.pushNamed(navigationTaps[0]),
          ),
        ),
      ),
    );
  }
}
