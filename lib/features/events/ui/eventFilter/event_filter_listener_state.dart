import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';

class EventFilterListenerState extends StatelessWidget {
  final Widget child;
  const EventFilterListenerState({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventsCubit, EventsState>(
      listenWhen: (previous, current) {
        return current is GetEventsFilterLoading ||
            current is GetEventsFilterError ||
            current is GetEventsFilterSuccess;
      },
      listener: (context, state) {
        state.whenOrNull(
          getEventsFilterLoading: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Loading"),
              ),
            );
          },
          getEventsFilterError: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
          getEventsFilterSuccess: (events) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Success"),
              ),
            );
            context.pop();
          },
        );
      },
      child: child,
    );
  }
}
