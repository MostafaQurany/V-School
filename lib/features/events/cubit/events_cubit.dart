import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';
import 'package:v_school/features/events/repo/events_repo.dart';

part 'events_cubit.freezed.dart';
part 'events_state.dart';

class EventsCubit extends Cubit<EventsState> {
  EventsRepo _eventsRepo;
  EventsCubit(
    this._eventsRepo,
  ) : super(const EventsState.initial());

  List<Event> events = [];

  Future<void> fetchEvents() async {
    if (events.isNotEmpty) {
      emit(EventsState.getEventsSuccess(events));
    }
    emit(EventsState.getEventsLoading());
    final res = await _eventsRepo.getEvents();
    res.when(
      success: (data) {
        events = data.events ?? [];
        emit(EventsState.getEventsSuccess(events));
      },
      error: (message) {
        emit(EventsState.getEventsError(message));
      },
    );
  }
}
