
import 'package:elearningproject/core/widgets/rating_bar_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/classes/app_styles.dart';

class CourseView extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String timeAmount;

  final void Function()? onPressed;

  const CourseView({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.timeAmount,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(imageUrl, width: 100.w),
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: AppStyles.style22Black),
            Text(timeAmount, style: AppStyles.style18Grey),
            const CustomRatingBar(),
          ],
        ),
      ],
    );
  }
}
