import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/theme/app_colors.dart';

class StudentAttendanceCard extends StatefulWidget {
  final String name;
  final String grade;
  final void Function()? onViewAttendance;

  const StudentAttendanceCard({
    super.key,
    required this.name,
    required this.grade,
    this.onViewAttendance,
  });

  @override
  State<StudentAttendanceCard> createState() => _StudentAttendanceCardState();
}

class _StudentAttendanceCardState extends State<StudentAttendanceCard> {
  String _attendanceStatus = 'present';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        bottom: 20.h,
        top: 20.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryWithOpacity30,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          hSpace(6),
          Text(
            widget.grade,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.secondary),
          ),
          hSpace(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio<String>(
                value: 'present',
                groupValue: _attendanceStatus,
                onChanged: (value) {
                  setState(() {
                    _attendanceStatus = value!;
                  });
                },
              ),
              const Text('Present'),
              const SizedBox(width: 16),
              Radio<String>(
                value: 'absent',
                groupValue: _attendanceStatus,
                onChanged: (value) {
                  setState(() {
                    _attendanceStatus = value!;
                  });
                },
              ),
              const Text('Absent'),
            ],
          ),
          hSpace(8),
          GestureDetector(
            onTap: widget.onViewAttendance,
            child: Text(
              'view attendance',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.primary),
            ),
          )
        ],
      ),
    );
  }
}
