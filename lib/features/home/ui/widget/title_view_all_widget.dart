import 'package:flutter/material.dart';

class TitleViewAllWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const TitleViewAllWidget({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            "view all",
          ),
        ),
      ],
    );
  }
}
