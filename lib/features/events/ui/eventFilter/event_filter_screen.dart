import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/widgets/custom_button.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';
import 'package:v_school/features/events/data/models/event_filter_request.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_by_attendance.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_by_categories.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_by_date.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_listener_state.dart';

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
          child: EventFilterListenerState(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("data"),
                EventFilterByCategories(categories: categories),
                SizedBox(height: 24.h),
                const EventFilterByDate(),
                SizedBox(height: 24.h),
                const EventFilterByAttendance(),
                SizedBox(height: 24.h),
                CustomButton(
                  text: "Get Events",
                  onTap: () {
                    context.read<EventsCubit>().fetchEventsFilter(
                          EventFilterRequest(),
                        );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
