  import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/announcement/data/category.dart';
import 'package:v_school/features/announcement/data/tag.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    required int id,
    required String name,
    required String slug,
    required String description,
    required String content,
    required String image,
    required List<Category> categories,
    required List<Tag> tags,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    required String address,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
