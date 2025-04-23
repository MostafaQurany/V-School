import 'package:flutter/material.dart';
import 'package:v_school/features/attendance/ui/widgets/student_attendance_card%20.dart';

class StudentAttendanceCardBuilder extends StatelessWidget {
  const StudentAttendanceCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          //* Attendace card
          return StudentAttendanceCard(
            name: "Mohamed",
            grade: "7",
            onViewAttendance: () {},
          );
        },
      ),
    );
  }
}
