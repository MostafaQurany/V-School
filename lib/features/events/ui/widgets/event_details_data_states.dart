import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';

class EventDetailsDataStates extends StatefulWidget {
  final String startDate;
  final String endDate;
  const EventDetailsDataStates(
      {super.key, required this.startDate, required this.endDate});

  @override
  State<EventDetailsDataStates> createState() => _EventDetailsDataStatesState();
}

class _EventDetailsDataStatesState extends State<EventDetailsDataStates> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          "Date",
        ),
        // TODO: make the function that calculate the the date is end or not
        dateDetails(
            title: "Start Date", date: widget.startDate, isComplete: true),
        _dashedLine(),
        dateDetails(
          title: "End Date",
          date: widget.endDate,
          isComplete: false,
        ),
      ],
    );
  }

  Widget dateDetails({
    required String title,
    required String date,
    required bool isComplete,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 25.w,
      children: [
        Expanded(
          child: Row(
            spacing: 8.w,
            children: [
              Container(
                width: 12.w,
                height: 12.w,
                decoration: BoxDecoration(
                  color: isComplete
                      ? AppColors.primary
                      : AppColors.primaryWithOpacity30,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.secondary),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        Text(date, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _dashedLine() {
    return Padding(
      padding: EdgeInsets.only(left: 6.0.w),
      child: CustomPaint(
        size: const Size(2, 40), // Adjust height of the dashes
        painter: HalfColoredDashedLinePainter(isCompleted: false),
      ),
    );
  }
}

class HalfColoredDashedLinePainter extends CustomPainter {
  final bool isCompleted;

  HalfColoredDashedLinePainter({required this.isCompleted});

  @override
  void paint(Canvas canvas, Size size) {
    final paintCompleted = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final paintRemaining = Paint()
      ..color = AppColors.primaryWithOpacity30
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    double dashHeight = 6, dashSpace = 6, startY = 0;
    double halfWay = size.height / 2;

    while (startY < size.height) {
      // Use blue for first half and grey for second half
      Paint currentPaint = startY < halfWay ? paintCompleted : paintRemaining;
      canvas.drawLine(
          Offset(0, startY), Offset(0, startY + dashHeight), currentPaint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
