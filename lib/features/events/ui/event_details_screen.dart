import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';
import 'package:v_school/features/events/ui/widgets/event_details_data_states.dart';
import 'package:v_school/features/events/ui/widgets/event_details_description.dart';
import 'package:v_school/features/events/ui/widgets/event_details_location.dart';
import 'package:v_school/features/events/ui/widgets/event_details_title_price.dart';

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
                background: CachedNetworkImage(
                  imageUrl: widget.event.image ??
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                  fit: BoxFit.cover,
                ),
              ),
              leading: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.black,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined)),
            ),
          ];
        },
        body: Padding(
          padding: AppConstants.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title and price
              EventDetailsTitlePrice(
                  title: widget.event.name ?? "Luxor & Aswan", price: 3600),
              hSpace(14),
              // Description
              EventDetailsDescription(
                description: widget.event.description ??
                    "THis is akfn aoksnd aoskdna;fk nsdf;aksdn fa;sdjfasd fkansdfoasndf[asodifas;dfkn asd;f odfns;adklfnsa;dfn sdkfns;dklfnsdjfbasgkfg'lbk 'pjas'fksonasdfka gasldm 'sdikgn adlf, m",
              ),

              splitContainer(),
              // Date
              EventDetailsDataStates(
                startDate: widget.event.startDate ?? '10/2/2025 at 7:00 am',
                endDate: widget.event.endDate ?? '10/2/2025 at 7:00 am',
              ),
              if (widget.event.country?.name.isNullOrEmpty != true ||
                  widget.event.state?.name.isNullOrEmpty != true) ...[
                splitContainer(),
                // Location
                EventDetailsLocation(
                  country: widget.event.country?.name ?? "",
                  city: widget.event.state?.name ?? "",
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  // Split
  Widget splitContainer() {
    return Column(
      children: [
        hSpace(12),
        Container(
          width: double.maxFinite,
          height: 2.h,
          decoration: BoxDecoration(
            color: AppColors.primaryWithOpacity30,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
        ),
        hSpace(12),
      ],
    );
  }
}
