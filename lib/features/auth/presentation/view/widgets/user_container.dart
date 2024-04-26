import 'package:elearningproject/features/auth/presentation/view/screens/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_colors.dart';
import '../../../../../core/classes/app_styles.dart';


class UserContainer extends StatelessWidget {
  const UserContainer(
      {super.key, required this.userImage, required this.userType});

  final String userImage;
  final String userType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LoginView()));
      },
      child: Container(
        height: 160.h,
        width: 160.h,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: AppColors.darkBlueColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.grayColor, width: 3),
            boxShadow: [
              BoxShadow(
                color: AppColors.grayColor,
                blurRadius: 1.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          children: [
            SizedBox(
                height: 100.h,
                child: Image.asset(
                  userImage,
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              userType,
              style: AppStyles.style25,
            ),
          ],
        ),
      ),
    );
  }
}
