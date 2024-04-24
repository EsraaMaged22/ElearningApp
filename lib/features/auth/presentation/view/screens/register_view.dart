import 'package:elearningproject/features/auth/presentation/view/screens/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_styles.dart';
import '../../../../../core/custom_text_form_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  GlobalKey globalKey = GlobalKey();
  int currentStep = 0;

  continueStep(){
    if(currentStep<3){
      setState(() {
        currentStep = currentStep+1;
      });
    }
  }

  cancelStep(){
    setState(() {
      if(currentStep > 0){
        currentStep = currentStep -1;
      }
    });
  }
  Widget firstControlsBuilder(context , details){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: details.onStepContinue,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(40.w, 40.h),
                backgroundColor: const Color(0xff364CC6),),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ],
      ),
    );
  }
  Widget controlsBuilder(context , details){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: details.onStepContinue,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(40.w, 40.h),
                  backgroundColor: const Color(0xff364CC6),),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          SizedBox(width: 50.w,),
          ElevatedButton(
              onPressed: details.onStepCancel,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(40.w, 40.h),
                  backgroundColor: Colors.white),
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
        ],
      ),
    );
  }
  Widget lastControlsBuilder(context , details){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: details.onStepCancel,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(40.w, 40.h),
                  backgroundColor: Colors.white),
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: globalKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 0, 21, 21),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              const Text(
                "Sign Up",
                style: AppStyles.style25,
              ),
              SizedBox(
                width: 200.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/apple-icon.png",
                          height: 55.h,
                          width: 55.w,
                        )),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/facebook-icon.png",
                        height: 60.h,
                        width: 60.w,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/google-icon.png",
                        height: 45.h,
                        width: 45.w,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              const Text(
                "Or Create your own account",
                style: AppStyles.style15Black,
              ),
              Stepper(
                  currentStep: currentStep,
                  onStepContinue: continueStep ,
                  onStepCancel: cancelStep,
                  controlsBuilder: currentStep == 0 ? firstControlsBuilder : currentStep <=2 && currentStep !=0?controlsBuilder: lastControlsBuilder,
                  steps: [
                Step(
                  isActive: currentStep>=0 ,
                    state: currentStep>=0 ? StepState.complete: StepState.disabled,
                    title: const Text("Username"),
                    content: Column(
                      children: [
                        CustomTextFormField(
                          controller: username,
                          hintText: 'Enter Username',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your username";
                            }
                            return null;
                          },
                          iconField: Icon(Icons.person),
                        ),
                      ],
                    )),
                Step(
                    isActive: currentStep>=1 ,
                    state: currentStep>=1 ? StepState.complete: StepState.disabled,

                    title: const Text("Email"),
                    content: Column(
                      children: [
                        CustomTextFormField(
                          controller: username,
                          hintText: 'Enter Email',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            }
                            return null;
                          },
                          iconField: Icon(Icons.email),
                        ),
                      ],
                    )),
                Step(
                    isActive: currentStep>=2 ,
                    state: currentStep>=2 ? StepState.complete: StepState.disabled,

                    title: const Text("Password"),
                    content: Column(
                      children: [
                        CustomTextFormField(
                          controller: password,
                          hintText: 'Enter Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                            return null;
                          },
                          iconField: Icon(Icons.lock),
                        ),
                      ],
                    )),
                Step(
                    isActive: currentStep>=3 ,
                    state: currentStep>=3 ? StepState.complete: StepState.disabled,

                    title: const Text("RePassword"),
                    content: Column(
                      children: [
                        CustomTextFormField(
                          controller: password,
                          hintText: 'Enter RePassword',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter same password";
                            }
                            return null;
                          },
                          iconField: Icon(Icons.lock),
                        ),
                      ],
                    ))
              ]),
              const Expanded(child: SizedBox()),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(double.infinity, 45.h),
                      backgroundColor: const Color(0xff364CC6)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              SizedBox(height: 8.h),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginView()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(double.infinity, 45.h),
                      backgroundColor: Colors.white),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
