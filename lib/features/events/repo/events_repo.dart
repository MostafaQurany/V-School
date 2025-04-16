import 'package:v_school/core/networking/api_result.dart';
import 'package:v_school/core/networking/api_service.dart';
import 'package:v_school/features/events/data/models/event_filter_request.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';

class EventsRepo {
  final ApiService apiService;
  EventsRepo(this.apiService);

  Future<ApiResult<GetEventResponse>> getEvents() async {
    try {
      final response = await apiService.getEvents();

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.error(message: e.toString());
    }
  }

  Future<ApiResult<GetEventResponse>> getFilteredEvents({
    EventFilterRequest? eventFilterRequest,
  }) async {
    try {
      final response = await apiService.getFilteredEvents(
        filter: eventFilterRequest,
      );

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.error(message: e.toString());
    }
  }
}
