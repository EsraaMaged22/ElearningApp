import 'package:elearningproject/core/app_styles.dart';
import 'package:elearningproject/core/widgets/rating_bar_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseView extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String timeAmount;

  final void Function()? onPressed;

  const CourseView({super.key,
    required this.imageUrl,
    required this.name,
    required this.timeAmount, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Row(
            children: [

              ClipRRect(
                child: Image.network(imageUrl, width: 100),
                borderRadius: BorderRadius.circular(10.0),
              ),

              SizedBox(width: 20, height: 10),
              Column(
                children: [
                  Text(name, style: AppStyles.style22Black),
                  SizedBox(height: 10),
                  Text(timeAmount, style: AppStyles.style18Grey),
                  SizedBox(width:250,height:10,child: CustomRatingBar())  ],
              ),
            ],
          ),
        ],

      );
  }
}