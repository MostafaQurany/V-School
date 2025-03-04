import 'package:flutter/material.dart';
import 'package:v_school/features/home/ui/widget/events/home_screen_events_builder.dart';
import 'package:v_school/features/home/ui/widget/title_view_all_widget.dart';

class HomeScreenEvents extends StatelessWidget {
  const HomeScreenEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleViewAllWidget(
          title: "Events",
          onTap: () {},
        ),
        HomeScreenEventsBuilder(),
      ],
    );
  }
}
