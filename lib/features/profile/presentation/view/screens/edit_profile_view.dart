import 'package:elearningproject/features/profile/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_styles.dart';



class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formkey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.only(top: 40,right: 16,left: 16,bottom: 8),
          child: Column(
            children: [
              ListTile(
                title: const Center(child: Text("Edit Profile",style: AppStyles.style25)),
                leading: IconButton(icon:const Icon(Icons.arrow_back_ios),
                  onPressed: (){
                  Navigator.pop(context);
                  },),
              ),
              SizedBox(height: 8.h),
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
                          onPressed: (){},
                          shape: const CircleBorder(),
                          backgroundColor: AppColors.darkBlueColor,
                          child:const Icon(Icons.add,size: 24,color: Colors.white,),),
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
              SizedBox(height: 16.h,),
              CustomTextField(
                icon: Icons.person,
                text: "Username",
               controller: name,
               hint: "enter your name please",
               validator: (value ){
                 if (value== null || value.isEmpty ){
                   return "please enter your name";
                 }
                 return null ;
               },
             ),
              CustomTextField(
                icon: Icons.email,
                text: "Email Address",
                controller: name,
                hint: "enter your email please",
                validator: (value ){
                  if (value== null || value.isEmpty ){
                    return "please enter your email address";
                  }
                  return null ;
                },
              ),
              CustomTextField(
                icon: Icons.phone,
                text: "Phone Number",
                controller: name,
                hint: "enter your phone number please",
                validator: (value ){
                  if (value== null || value.isEmpty ){
                    return "please enter your phone number";
                  }
                  return null ;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/12,
                width:MediaQuery.of(context).size.width,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    color: AppColors.darkBlueColor,
                    child: const Text("Save Change",style: TextStyle(fontSize: 18,color: Colors.white),),
                    onPressed: (){}),
              )

            ],
          ),
            )
        ,),);
  }
}
