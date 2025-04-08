import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventFilterSectionTitle extends StatelessWidget {
  final String text;
  const EventFilterSectionTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
    );
  }
}
