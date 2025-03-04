import 'package:flutter/material.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/features/home/ui/widget/categories/home_screen_category_builder.dart';

class HomeScreenCategory extends StatelessWidget {
  const HomeScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        hSpace(8),
        HomeScreenCategoryBuilder(),
      ],
    );
  }
}
