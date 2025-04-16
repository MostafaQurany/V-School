import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/events/data/models/event_filter_request.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';
import 'package:v_school/features/events/repo/events_repo.dart';

part 'events_cubit.freezed.dart';
part 'events_state.dart';

class EventsCubit extends Cubit<EventsState> {
  EventsRepo _eventsRepo;
  EventsCubit(this._eventsRepo) : super(const EventsState.initial());

  List<Event> events = []; // Full list of loaded events
  List<Event> _filteredEvents = []; // Internal filtered list

  Future<void> fetchEvents() async {
    if (events.isNotEmpty) {
      emit(EventsState.getEventsSuccess(events));
    }
    emit(EventsState.getEventsLoading());

    final res = await _eventsRepo.getEvents();
    res.when(
      success: (data) {
        events = data.events ?? [];
        _filteredEvents = events; // set default
        emit(EventsState.getEventsSuccess(_filteredEvents));
      },
      error: (message) {
        emit(EventsState.getEventsError(message));
      },
    );
  }

  void searchEventsLocally(String query) {
    if (query.trim().isEmpty) {
      emit(EventsState.getEventsSuccess(events));
      return;
    }

    final result = events.where((event) {
      return event.name?.toLowerCase().contains(query.toLowerCase()) ?? false;
    }).toList();

    emit(EventsState.getEventsSuccess(result));
  }

  // The filtering from server side (already exists)
  List<Event> eventsFilters = [];

  Future<void> fetchEventsFilter(EventFilterRequest eventFilterRequest) async {
    emit(EventsState.getEventsFilterLoading());
    final res = await _eventsRepo.getFilteredEvents(
      eventFilterRequest: eventFilterRequest,
    );
    res.when(
      success: (data) {
        eventsFilters = data.events ?? [];
        emit(EventsState.getEventsFilterSuccess(eventsFilters));
      },
      error: (message) {
        emit(EventsState.getEventsFilterError(message));
      },
    );
  }
}
