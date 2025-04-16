import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/features/announcement/data/announcement.dart';

class AnnouncementItem extends StatelessWidget {
  final Announcement announcement;
  const AnnouncementItem({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 0.8.sw, // Make it responsive
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: AppColors.primaryWithOpacity30,
          width: 1.5,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      margin: EdgeInsets.only(right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child: Text(
              announcement.description,
              style: Theme.of(context).textTheme.headlineMedium,
              textDirection: TextDirection.rtl,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            flex: 2,
            child: Text(
              announcement.createdAt ?? "Soon",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppColors.secondary,
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
