import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';
import 'package:v_school/features/events/ui/widgets/event_item.dart';
import 'package:v_school/features/events/ui/widgets/events_list_search_bar_filter.dart';

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
              return Padding(
                padding: AppConstants.screenPadding,
                child: Column(
                  children: [
                    EventsListSearchBarFilter(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: events.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: EventItem(
                              event: events[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
