import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_colors.dart';


class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key, required this.icon, required this.text,  this.height = 60,  this.width =100,
  });
  final IconData icon ;
  final String text ;
  final int  height;
  final int  width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.h,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0),),
        color: AppColors.darkBlueColor,
        onPressed: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: AppColors.whiteColor,),
            Text("${text}",style: TextStyle(color: Colors.white,fontSize: 16),)

          ],
        ),),
    );
  }
}
