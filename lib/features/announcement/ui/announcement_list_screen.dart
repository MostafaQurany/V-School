import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/announcement/cubit/announcement_cubit.dart';
import 'package:v_school/features/announcement/ui/widgets/announcement_item.dart';
import 'package:v_school/features/announcement/ui/widgets/announcement_list_search_bar_filter.dart';

class AnnouncementListScreen extends StatelessWidget {
  const AnnouncementListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcement"),
      ),
      body: BlocConsumer<AnnouncementCubit, AnnouncementState>(
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
            getAnnouncementSuccess: (announcementList) {
              return Padding(
                padding: AppConstants.screenPadding,
                child: Column(
                  children: [
                    AnnouncementListSearchBarFilter(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: announcementList.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: AnnouncementItem(
                              announcement: announcementList[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            getAnnouncementLoading: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            getAnnouncementError: (message) {
              return Center(
                child: Column(
                  children: [
                    Text(message),
                    ElevatedButton(
                      onPressed: () {
                        // Retry button action
                        context.read<AnnouncementCubit>().getAnnouncements();
                      },
                      child: Text("Retry"),
                    ),
                  ],
                ),
              );
            },
            orElse: () {
              return SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
