import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';
import 'package:v_school/features/events/ui/widgets/home_screen_events_builder.dart';
import 'package:v_school/features/home/ui/widget/title_view_all_widget.dart';

class HomeScreenEvents extends StatelessWidget {
  const HomeScreenEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventsCubit, EventsState>(
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
          getEventsError: (error) {
            return Text(
              'An error occurred: ${error}',
              style: TextStyle(color: Colors.red),
            );
          },
          getEventsLoading: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          getEventsSuccess: (events) {
            return Column(
              children: [
                TitleViewAllWidget(
                  title: "Events",
                  onTap: events.isNotEmpty
                      ? () {
                          context.pushNamed("eventsListScreen");
                        }
                      : null,
                ),
                HomeScreenEventsBuilder(
                  events: events,
                ),
              ],
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
