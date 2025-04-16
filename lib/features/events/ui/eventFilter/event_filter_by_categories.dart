import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_section_title.dart';

class EventFilterByCategories extends StatefulWidget {
  final List<String> categories;

  const EventFilterByCategories({
    super.key,
    required this.categories,
  });

  @override
  State<EventFilterByCategories> createState() =>
      _EventFilterByCategoriesState();
}

class _EventFilterByCategoriesState extends State<EventFilterByCategories> {
  String? selectedCategories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EventFilterSectionTitle(text: 'By categories:'),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: widget.categories.map(
            (e) {
              return FilterChip(
                label: Text(
                  e,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: selectedCategories == e
                          ? AppColors.white
                          : AppColors.secondary),
                ),
                backgroundColor: selectedCategories == e
                    ? AppColors.primary
                    : AppColors.background,
                avatar: selectedCategories == e
                    ? Icon(
                        Icons.check,
                        color: AppColors.white,
                        size: 24.sp,
                      )
                    : null,
                side: BorderSide(color: AppColors.transparent),
                onSelected: (_) {
                  setState(() {
                    if (selectedCategories == e) {
                      selectedCategories = null;
                    } else {
                      selectedCategories = e;
                    }
                  });
                },
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
