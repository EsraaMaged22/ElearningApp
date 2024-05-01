
import 'package:elearningproject/features/auth/presentation/view/screens/register_view.dart';
import 'package:elearningproject/features/bottom_navigaton_bar/presentation/view/bottom_nav_bar_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/classes/app_styles.dart';
import '../../../../../core/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey globalKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form (
        key: globalKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 0, 21, 21),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              const Text(
                "Login",
                style: AppStyles.style25,
              ),
              SizedBox(
                width: 200.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                       FirebaseAuth.instance.currentUser!.sendEmailVerification();
                          /* FirebaseAuth.instance.currentUser!.emailVerified ?
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomnavigationbar())):(){} ;*/
                        },
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
                "Or enter you username and password",
                style: AppStyles.style18Black,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "UserName",
                  style: AppStyles.style18Black,
                ),
              ),
              CustomTextFormField(
                controller: email,
                hintText: 'Enter Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your Email";
                  }
                  return null;
                },
                iconField: const Icon(Icons.person),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: AppStyles.style18Black,
                ),
              ),
              CustomTextFormField(
                controller: password,
                hintText: 'Enter Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                  return null;
                },
                iconField: const Icon(Icons.lock),
              ),
              const Expanded(child: SizedBox()),
              ElevatedButton(
                  onPressed: ()
                    async {
                      try {
                        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email.text,
                            password: password.text,
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomnavigationbar()));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(double.infinity, 45.h),
                      backgroundColor: const Color(0xff364CC6)),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              SizedBox(height: 8.h),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterView()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(double.infinity, 45.h),
                      backgroundColor: Colors.white),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
