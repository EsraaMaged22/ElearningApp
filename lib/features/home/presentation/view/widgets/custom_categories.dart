import 'package:elearningproject/core/app_styles.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Container(
          height: 40,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0x0ff364cc),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
             'For You',
              style: AppStyles.style18Black
          )),
    Container(
    height: 40,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    decoration: BoxDecoration(
    color: const Color(0x0ff364cc),
    borderRadius: BorderRadius.circular(20),
    ),
   child: const Text(
    'Popular',
    style:    AppStyles.style18Black
    ),),
    Container(
    height: 40,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    decoration: BoxDecoration(
    color: const Color(0x0ff364cc),
    borderRadius: BorderRadius.circular(20),
    ),
    child:  const Text(
    'Newest',
    style:    AppStyles.style18Black
    ),)
        ]


      ),
    );
  }


}