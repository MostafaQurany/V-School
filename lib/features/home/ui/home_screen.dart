import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/events/ui/home_screen_events.dart';
import 'package:v_school/features/announcement/ui/home_screen_announcement.dart';
import 'package:v_school/features/home/ui/widget/categories/home_screen_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Text('Home Screen'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search button press
              }),
        ],
      ),
      body: Padding(
        padding: AppConstants.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            spacing: 18.h,
            children: [
              // events
              HomeScreenEvents(),
              //Announcement
              HomeScreenAnnouncement(),
              // category
              HomeScreenCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
