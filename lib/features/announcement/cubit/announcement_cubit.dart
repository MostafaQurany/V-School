import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/announcement/data/announcement.dart';
import 'package:v_school/features/announcement/data/get_announcements_response.dart';
import 'package:v_school/features/announcement/repo/announcement_repo.dart';

part 'announcement_state.dart';
part 'announcement_cubit.freezed.dart';

class AnnouncementCubit extends Cubit<AnnouncementState> {
  final AnnouncementRepo _repo;

  AnnouncementCubit(this._repo) : super(const AnnouncementState.initial());

  List<Announcement> announcements = []; // Full list of loaded announcement
  final List<Announcement> _filteredAnnouncement = []; // Internal filtered list

  Future<void> getAnnouncements() async {
    if (announcements.isNotEmpty) {
      emit(AnnouncementState.getAnnouncementSuccess(announcements));
    } else {
      emit(const AnnouncementState.getAnnouncementLoading());
      final result = await _repo.getAnnouncements();
      result.when(
        success: (data) {
          announcements = data.data;
          emit(AnnouncementState.getAnnouncementSuccess(announcements));
        },
        error: (message) =>
            emit(AnnouncementState.getAnnouncementError(message)),
      );
    }
  }

  void searchAnnouncementsLocally(String query) {
    if (query.trim().isEmpty) {
      emit(AnnouncementState.getAnnouncementSuccess(announcements));
      return;
    }

    final result = announcements.where((announcement) {
      return announcement.content.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(AnnouncementState.getAnnouncementSuccess(result));
  }
}
