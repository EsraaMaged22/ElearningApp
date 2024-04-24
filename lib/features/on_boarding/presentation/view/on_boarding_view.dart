import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstOnBoarding extends StatefulWidget {
  const FirstOnBoarding({super.key});

  @override
  State<FirstOnBoarding> createState() => _FirstOnBoardingState();
}

class _FirstOnBoardingState extends State<FirstOnBoarding> {
  Widget dotpageview() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: i == pagenumber ? 25 : 6,
              height: 6.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: i == pagenumber ? Color(0xff364CC6) : Colors.grey),
            ),
        ],
      );
    }));
  }

  PageController nextpage = PageController();
  int pagenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            pagenumber=value;
          });
        },
        controller: nextpage,
        children: [
          Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Image.asset("assets/first.png"),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "WECOME !",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                textAlign: TextAlign.center,
                "good morning\nlet's learn and make it part of your day",
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: InkWell(
                  onTap: () {
                    nextpage.animateToPage(1,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff364CC6),
                    ),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              dotpageview(),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Image.asset("assets/second.png"),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "CONNECT WITH EVERYONE !",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                textAlign: TextAlign.center,
                "always keep in touch with your tutor and friend.\nlet's get connected !",
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: InkWell(
                  onTap: () {
                    nextpage.animateToPage(2,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff364CC6),
                    ),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              dotpageview(),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Image.asset("assets/third.png"),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "LEARN ON YOUR SCHEDULE !",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                textAlign: TextAlign.center,
                "anywhere any time. the time is at your discretion\nso study whenever you want.",
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff364CC6),
                    ),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              dotpageview(),
            ],
          ),
        ],
      ),
    );
  }
}
