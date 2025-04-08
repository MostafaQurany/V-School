import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:v_school/features/events/ui/widgets/eventFilter/event_filter_by_attendance.dart';
import 'package:v_school/features/events/ui/widgets/eventFilter/event_filter_by_categories.dart';
import 'package:v_school/features/events/ui/widgets/eventFilter/event_filter_by_date.dart';

class EventsFilterScreen extends StatefulWidget {
  const EventsFilterScreen({super.key});

  @override
  State<EventsFilterScreen> createState() => _EventsFilterScreenState();
}

class _EventsFilterScreenState extends State<EventsFilterScreen> {
  final List<String> categories = [
    'Arabic',
    'Mathematics',
    'English',
    'History',
    'Science',
    'Geography',
    'Events'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events filter'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EventFilterByCategories(categories: categories),
              SizedBox(height: 24.h),
              const EventFilterByDate(),
              SizedBox(height: 24.h),
              const EventFilterByAttendance()
            ],
          ),
        ),
      ),
    );
  }
}
