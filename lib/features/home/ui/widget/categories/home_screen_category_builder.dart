import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_assets.dart';

import 'category_item.dart';

class HomeScreenCategoryBuilder extends StatelessWidget {
  HomeScreenCategoryBuilder({Key? key}) : super(key: key);

  final Map<String, String> data = {
    "Assignment": AppAssets.assignmentIconSvg,
    "Quiz": AppAssets.quizIconSvg,
    "Attendance": AppAssets.quizIconSvg,
    "Class Schedule": AppAssets.classScheduleIconSvg,
    "Result": AppAssets.resultIconSvg,
    "School Holiday": AppAssets.quizIconSvg,
    "Exam Schedule": AppAssets.examScheduleIconSvg,
  };

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
            icon: data[data.keys.elementAt(index)] ?? '',
            title: data.keys.elementAt(index),
          ),
        ),
      ),
    );
  }
}
