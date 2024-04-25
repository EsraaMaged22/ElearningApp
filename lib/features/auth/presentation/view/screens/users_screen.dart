import 'package:elearningproject/features/auth/presentation/view/widgets/user_container.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text("Choose your Category!" , style: AppStyles.style25,),
            SizedBox(
              height: 16,
            ),
            UserContainer(userImage: "assets/teacher.png", userType: "Teacher"),
            SizedBox(
              height: 12,
            ),
            UserContainer(userImage: "assets/student.png", userType: "Student"),
            SizedBox(
              height: 12,
            ),
            UserContainer(userImage: "assets/guest.png", userType: "Guest"),
          ],
        ),
      ),
    );
  }
}


