import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_assets.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_section_title.dart';

class EventFilterByDate extends StatefulWidget {
  const EventFilterByDate({super.key});

  @override
  State<EventFilterByDate> createState() => _EventFilterByDateState();
}

class _EventFilterByDateState extends State<EventFilterByDate> {
  final DateFormat formatter = DateFormat('dd / MM / yyyy');

  DateTime? fromDate;

  DateTime? toDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EventFilterSectionTitle(text: 'By date:'),
        Row(
          children: [
            Expanded(child: _buildDatePicker(true)),
            SizedBox(width: 12.w),
            Expanded(child: _buildDatePicker(false)),
          ],
        ),
      ],
    );
  }

  Widget _buildDatePicker(bool isFrom) => GestureDetector(
        onTap: () async {
          final picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 10),
          );
          if (picked != null) {
            setState(() {
              if (isFrom) {
                fromDate = picked;
              } else {
                toDate = picked;
              }
            });
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryWithOpacity30,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  isFrom
                      ? (fromDate != null
                          ? formatter.format(fromDate!)
                          : 'From')
                      : (toDate != null ? formatter.format(toDate!) : 'To'),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: fromDate != null && toDate != null
                            ? AppColors.black
                            : AppColors.secondary,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.background),
                  child: SvgPicture.asset(AppAssets.calenderIconSvg))
            ],
          ),
        ),
      );
}
