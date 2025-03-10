import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';
import 'package:v_school/features/events/ui/widgets/event_item.dart';

class HomeScreenEventsBuilder extends StatelessWidget {
  final List<Event> events;
  const HomeScreenEventsBuilder({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h, // Adjusted height for better responsiveness
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        physics: BouncingScrollPhysics(), // Smooth scrolling effect
        padding:
            EdgeInsets.symmetric(horizontal: 10.w), // Prevents cutting edges
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w), // Adds space between items
            child: EventItem(
              event: events[index],
            ),
          );
        },
      ),
    );
  }
}
