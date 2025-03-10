import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_assets.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';

class EventItem extends StatelessWidget {
  final Event event;
  const EventItem({super.key, required this.event});

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
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      margin: EdgeInsets.only(right: 10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100.h,
            width: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.grey.shade300, // Placeholder color
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Luxor & Aswan",
                  style: Theme.of(context).textTheme.headlineMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  "Explore Karnak Temple, Valley of the Kings and Luxor Temple...",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.secondary,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.locationIconSvg,
                      height: 20.h,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      "Egypt",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(width: 16.w),
                    SvgPicture.asset(
                      AppAssets.calenderIconSvg,
                      height: 20.h,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      "5/2/2025",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
