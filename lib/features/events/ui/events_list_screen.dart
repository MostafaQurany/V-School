import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';
import 'package:v_school/features/events/ui/widgets/event_item.dart';

class EventsListScreen extends StatelessWidget {
  const EventsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: BlocConsumer<EventsCubit, EventsState>(
        listenWhen: (previous, current) =>
            current is GetEventsLoading ||
            current is GetEventsSuccess ||
            current is GetEventsError,
        listener: (context, state) {},
        buildWhen: (previous, current) =>
            current is GetEventsLoading ||
            current is GetEventsSuccess ||
            current is GetEventsError,
        builder: (context, state) {
          return state.maybeWhen(
            getEventsSuccess: (events) {
              return ListView.builder(
                itemCount: events.length,
                physics: BouncingScrollPhysics(), // Smooth scrolling effect
                padding: EdgeInsets.symmetric(
                    horizontal: 10.w), // Prevents cutting edges
                itemBuilder: (context, index) {
                  final event = events[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    // Adds space between items
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          Routes.eventDetailsScreenName,
                          extra: event, // Passing the event object directly
                        );
                      },
                      child: EventItem(
                        event: events[index],
                      ),
                    ),
                  );
                },
              );
            },
            getEventsLoading: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            getEventsError: (message) {
              return Center(
                child: Column(
                  children: [
                    Text(message),
                    ElevatedButton(
                      onPressed: () {
                        // Retry button action
                        context.read<EventsCubit>().fetchEvents();
                      },
                      child: Text("Retry"),
                    ),
                  ],
                ),
              );
            },
            orElse: () {
              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
