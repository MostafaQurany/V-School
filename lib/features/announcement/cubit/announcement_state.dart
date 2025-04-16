part of 'announcement_cubit.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState.initial() = _Initial;
  const factory AnnouncementState.getAnnouncementLoading() =
      GetAnnouncementLoading;
  const factory AnnouncementState.getAnnouncementSuccess(
      List<Announcement> announcementList) = GetAnnouncementSuccess;
  const factory AnnouncementState.getAnnouncementError(String message) =
      GetAnnouncementError;
}
