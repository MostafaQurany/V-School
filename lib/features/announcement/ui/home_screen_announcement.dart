import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/features/announcement/cubit/announcement_cubit.dart';
import 'package:v_school/features/announcement/ui/widgets/home_screen_announcement_builder.dart';
import 'package:v_school/features/home/ui/widget/title_view_all_widget.dart';

class HomeScreenAnnouncement extends StatelessWidget {
  const HomeScreenAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnnouncementCubit, AnnouncementState>(
      listenWhen: (previous, current) =>
          current is GetAnnouncementLoading ||
          current is GetAnnouncementSuccess ||
          current is GetAnnouncementError,
      listener: (context, state) {},
      buildWhen: (previous, current) =>
          current is GetAnnouncementLoading ||
          current is GetAnnouncementSuccess ||
          current is GetAnnouncementError,
      builder: (context, state) {
        return state.maybeWhen(
          getAnnouncementLoading: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          getAnnouncementSuccess: (announcementList) {
            return Column(
              children: [
                TitleViewAllWidget(
                  title: "Announcements",
                  onTap: () {
                    context.pushNamed(Routes.announcementsScreen);
                  },
                ),
                HomeScreenAnnouncementBuilder(
                  announcementsList: announcementList,
                ),
              ],
            );
          },
          getAnnouncementError: (message) {
            return Text(
              'An error occurred: $message',
              style: TextStyle(color: Colors.red),
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
