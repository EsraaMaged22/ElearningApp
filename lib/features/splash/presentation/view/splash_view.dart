import 'package:elearningproject/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    _NavigationHome();
  }

  _NavigationHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => firstonboarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150.h,
                width: 150.h,
                child: Column(
                  children: [
                    Image.asset("assets/splash.jpg"),
                    Text(
                      "E-LEARNING",
                      style: TextStyle(
                          color: Color(0xff364CC6),
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}