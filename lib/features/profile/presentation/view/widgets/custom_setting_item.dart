
import 'package:elearningproject/core/classes/app_colors.dart';
import 'package:elearningproject/core/classes/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class CustomSettingItem extends StatelessWidget {
  CustomSettingItem({
    super.key, required this.icon, required this.title, this.onPressed, this.color = Colors.white ,
  });

  final IconData icon ;
  final String title ;
   Color color ;
  final void Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: color,),

                  child: IconButton(
                    iconSize: 20,
                onPressed: (){},
                icon: Icon(icon,), color: Colors.white)
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.05,),
              Text("${title}",style: AppStyles.style18Black,),
            ],),
            IconButton(
                onPressed: onPressed,
                icon:Icon(Icons.arrow_forward_ios,color: Colors.black,))
          ],
        ),
        SizedBox(height: 20.h),
      ],

    );
  }
}
