import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/announcement/data/announcement.dart';

part 'get_announcements_response.freezed.dart';
part 'get_announcements_response.g.dart';

@freezed
class GetAnnouncementsResponse with _$GetAnnouncementsResponse {
  const factory GetAnnouncementsResponse({
    required List<Announcement> data,
    required bool error,
    String? message,
  }) = _GetAnnouncementsResponse;

  factory GetAnnouncementsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAnnouncementsResponseFromJson(json);
}

