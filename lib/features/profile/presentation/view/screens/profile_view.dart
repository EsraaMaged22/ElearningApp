import 'package:elearningproject/features/profile/presentation/view/screens/edit_profile_view.dart';
import 'package:elearningproject/features/profile/presentation/view/widgets/custom_setting_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/app_styles.dart';
import '../widgets/custom_matrial_button.dart';
import '../widgets/setting_options.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.only(top: 40,right: 16,left: 16,bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: const Text("Profile",style: AppStyles.style25),
                trailing: IconButton(icon:const Icon(Icons.more_vert),onPressed: (){},),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: MediaQuery.of(context).size.width/2.5,
                height: MediaQuery.of(context).size.height*0.18,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: MediaQuery.of(context).size.width/3,
                          height: MediaQuery.of(context).size.height*0.16,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.black,
                          ),
                          child: Image.asset("assets/first.png",fit: BoxFit.fill)),
                    ),
                    Positioned(
                      height: 32.h,
                      width: 32.h,
                      right: 0,
                      top: 2,
                        child: FloatingActionButton(
                          mini: true,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfile()));
                          },
                          shape: const CircleBorder(),
                          backgroundColor: AppColors.darkBlueColor,
                          child:const Icon(Icons.edit,size: 24,color: Colors.white,),),
                        )]),),
              const Text("Name",style: AppStyles.style25),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                IconButton(
                  onPressed: () {},
                    icon: Image.asset("assets/crown-removebg-preview.png",scale: 20,),
               ),
                const Text("Premium Account",style: AppStyles.style18Black),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomMaterialButton(
                    text: "26 Hours",
                    icon:Icons.schedule ,
                  ),
                  SizedBox(width: 20.h,),
                  const CustomMaterialButton(
                    text: "12 Courses",
                    icon:Icons.folder_copy_outlined ,
                  ),
                ],
              ),
             SizedBox(height: 30.h),
              CustomSettingItem(
                  icon: Icons.settings,
                  title: "Setting",
              color: AppColors.darkBlueColor,
              onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const SettingOptions(
                    )));
              },),
              CustomSettingItem(
                icon: Icons.star,
                title: "Achievements",
                color: AppColors.lightBlueColor,),
              CustomSettingItem(
                icon: Icons.schedule,
                title: "Learning reminders",
                color: AppColors.yellowColor,),],),),),);
  }
}

