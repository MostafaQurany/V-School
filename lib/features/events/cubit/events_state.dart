part of 'events_cubit.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.initial() = _Initial;
  const factory EventsState.getEventsLoading() = GetEventsLoading;
  const factory EventsState.getEventsError(String message) = GetEventsError;
  const factory EventsState.getEventsSuccess(List<Event> events) =
      GetEventsSuccess;
}
