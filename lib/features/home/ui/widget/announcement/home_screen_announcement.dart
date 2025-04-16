import 'package:flutter/material.dart';
import 'package:v_school/features/home/ui/widget/announcement/home_screen_announcement_builder.dart';
import 'package:v_school/features/home/ui/widget/title_view_all_widget.dart';

class HomeScreenAnnouncement extends StatelessWidget {
  const HomeScreenAnnouncement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewAllWidget(
          title: "Announcements",
          onTap: () {},
        ),
        HomeScreenAnnouncementBuilder(),
      ],
    );
  }
}
