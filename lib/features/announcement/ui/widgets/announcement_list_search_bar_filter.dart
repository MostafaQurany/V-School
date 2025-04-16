import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_assets.dart';
import 'package:v_school/features/announcement/cubit/announcement_cubit.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';

class AnnouncementListSearchBarFilter extends StatelessWidget {
  const AnnouncementListSearchBarFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              onChanged: (value) {
                context
                    .read<AnnouncementCubit>()
                    .searchAnnouncementsLocally(value);
              },
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(
                      12.h), // Adjust padding for better alignment
                  child: SvgPicture.asset(
                    AppAssets.searchIconSvg,
                    height: 20.h, // Explicit height
                    width: 20.h, // Explicit width
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                fillColor: AppColors.primaryWithOpacity30,
                filled: true,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              //  context.pushNamed(Routes.eventFilterScreenName);
            },
            icon: SvgPicture.asset(
              AppAssets.filterIconSvg,
              // Explicit width
            ),
          )
        ],
      ),
    );
  }
}
