
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/classes/app_colors.dart';
import '../../../../../core/classes/app_styles.dart';
import 'custom_setting_item.dart';


class SettingOptions extends StatefulWidget {
  const SettingOptions({
    super.key,
  });

  @override
  State<SettingOptions> createState() => _SettingOptionsState();
}

class _SettingOptionsState extends State<SettingOptions> {
  bool status = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding:  const EdgeInsets.only(top: 48,right: 16,left: 16,bottom: 8),
      
          child: Column(
            children: [
              ListTile(
                title: Text("Setting",style: AppStyles.style20),
                leading: IconButton(icon:Icon(Icons.arrow_back_ios),
                  onPressed: (){
                  Navigator.pop(context);
                  },),
              ),
              SizedBox(height: 10.h,),
              CustomSettingItem(
                icon: Icons.language,
                title: "Language",
                color: AppColors.darkBlueColor,
                onPressed: (){
                },
              ),
              SizedBox(height: 10.h,),
      
              CustomSettingItem(
                icon: Icons.notifications,
                title: "Notifications",
                color: AppColors.darkBlueColor,
                onPressed: (){},
              ),
              SizedBox(height: 10.h,),
              CustomSettingItem(
                color: AppColors.darkBlueColor,
                icon: Icons.info,
                title: "Info",
                onPressed: (){},
              ),
              SizedBox(height: 10.h,),

              CustomSettingItem(
                color: AppColors.darkBlueColor,
                icon: Icons.contact_phone,
                title: "Contact Us",
                onPressed: (){},
              ),
              SizedBox(height: 10.h,),
              CustomSettingItem(
                color: AppColors.darkBlueColor,
                icon: Icons.logout,
                title: "Logout",
                onPressed: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}