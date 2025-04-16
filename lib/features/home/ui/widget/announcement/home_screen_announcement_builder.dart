import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'announcement_item.dart';

class HomeScreenAnnouncementBuilder extends StatelessWidget {
  const HomeScreenAnnouncementBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h, // Adjusted height for better responsiveness
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: BouncingScrollPhysics(), // Smooth scrolling effect
        padding:
            EdgeInsets.symmetric(horizontal: 10.w), // Prevents cutting edges
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w), // Adds space between items
            child: AnnouncementItem(),
          );
        },
      ),
    );
  }
}
