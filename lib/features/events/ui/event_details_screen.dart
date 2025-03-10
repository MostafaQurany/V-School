import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';

class EventDetailsScreen extends StatefulWidget {
  final Event event;
  const EventDetailsScreen({super.key, required this.event});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsings ssssss s s s s s s Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            children: [
              titleAndPrice(),
              hSpace(14),
              description(),
              hSpace(12),
              splitContainer(),
              hSpace(12),
              dateStates(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 25.w,
      children: [
        Expanded(
          child: Text(
            "Luxor & Aswan",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.primary,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "3600 EGP",
        ),
      ],
    );
  }

  Widget description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          "Description",
        ),
        Text(
          // widget.event.description ??
          "THis is akfn aoksnd aoskdna;fk nsdf;aksdn fa;sdjfasd fkansdfoasndf[asodifas;dfkn asd;f odfns;adklfnsa;dfn sdkfns;dklfnsdjfbasgkfg'lbk 'pjas'fksonasdfka gasldm 'sdikgn adlf, m",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.secondary),
        ),
      ],
    );
  }

  Widget splitContainer() {
    return Container(
      width: double.maxFinite,
      height: 2.h,
      decoration: BoxDecoration(
        color: AppColors.primaryWithOpacity30,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    );
  }

  Widget dateStates() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          "Date",
        ),
        dateDetails("Start Date", "10/2/2025 at 7:00 am"),
        dottedLineDash(),
        dateDetails("End Date", "10/2/2025 at 7:00 am"),
      ],
    );
  }

  Widget dateDetails(String title, String date) {
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
                  color: AppColors.primary,
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
        Text(
          date,
        ),
      ],
    );
  }

  Widget dottedLineDash() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: AppColors.primary),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
        );
      },
    );
  }
}
