import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';

class AttendanceClassesTopBar extends StatefulWidget {
  const AttendanceClassesTopBar({super.key});

  @override
  AttendanceClassesTopBarState createState() => AttendanceClassesTopBarState();
}

class AttendanceClassesTopBarState extends State<AttendanceClassesTopBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: selectedIndex == index
                    ? BorderSide(
                        color: AppColors.primary,
                        width: 1,
                      )
                    : BorderSide.none,
              ),
            ),
            margin: EdgeInsetsDirectional.only(end: 20.w),
            child: Text(
              "data",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedIndex == index
                        ? AppColors.primary
                        : AppColors.secondary,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
