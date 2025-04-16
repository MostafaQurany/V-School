import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_section_title.dart';

class EventFilterByAttendance extends StatefulWidget {
  const EventFilterByAttendance({super.key});

  @override
  State<EventFilterByAttendance> createState() =>
      _EventFilterByAttendanceState();
}

class _EventFilterByAttendanceState extends State<EventFilterByAttendance> {
  String attendance = '';
  String type = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EventFilterSectionTitle(text: 'By attendance:'),
        Row(
          children: [
            _choice('Attended', attendance == 'Attended', () {
              _selectAttendanceFunction('Attended');
            }),
            SizedBox(width: 10.w),
            _choice('Not attended', attendance == 'Not attended', () {
              _selectAttendanceFunction('Not attended');
            }),
          ],
        ),
        SizedBox(height: 24.h),
        EventFilterSectionTitle(text: 'By type:'),
        Row(
          children: [
            _choice('Upcoming', type == 'Upcoming', () {
              _selectTypeFunction('Upcoming');
            }),
            SizedBox(width: 10.w),
            _choice('Finished', type == 'Finished', () {
              _selectTypeFunction('Finished');
            }),
          ],
        )
      ],
    );
  }

  _selectTypeFunction(String name) {
    setState(() {
      if (name == type) {
        type = '';
      } else {
        type = name;
      }
    });
  }

  _selectAttendanceFunction(String name) {
    setState(() {
      if (name == attendance) {
        attendance = '';
      } else {
        attendance = name;
      }
    });
  }

  Widget _choice(String label, bool selected, VoidCallback onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: selected ? AppColors.primary : AppColors.background,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Text(label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: selected ? AppColors.white : AppColors.secondary)),
        ),
      );
}
