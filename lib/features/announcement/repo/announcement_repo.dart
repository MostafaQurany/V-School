import 'package:v_school/core/networking/api_result.dart';
import 'package:v_school/core/networking/api_service.dart';
import 'package:v_school/features/announcement/data/get_announcements_response.dart';

class AnnouncementRepo {
  final ApiService apiService;
  AnnouncementRepo(this.apiService);

  Future<ApiResult<GetAnnouncementsResponse>> getAnnouncements() async {
    try {
      final response = await apiService.getAnnouncements();

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.error(message: e.toString());
    }
  }

}
