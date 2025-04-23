import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/attendance/ui/widgets/attendance_classes_top_bar.dart';
import 'package:v_school/features/attendance/ui/widgets/student_attendance_card%20.dart';
import 'package:v_school/features/attendance/ui/widgets/student_attendance_card_builder.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
      ),
      body: Padding(
        padding: AppConstants.screenPadding,
        child: Column(
          children: [
            //* the classes tab bar
            AttendanceClassesTopBar(),
            // * the list view builder
            StudentAttendanceCardBuilder(),
          ],
        ),
      ),
    );
  }
}
