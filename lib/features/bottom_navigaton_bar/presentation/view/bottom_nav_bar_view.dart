import 'package:elearningproject/features/home/presentation/view/home_view.dart';
import 'package:elearningproject/features/profile/presentation/view/screens/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottomnavigationbar extends StatefulWidget {
  const bottomnavigationbar({super.key});

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int navBarIndex = 0;
  List navBody = [HomeView(),const Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[navBarIndex],
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        //tabBackgroundColor: Color(0xff364CC6),//
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            text: "home",
            backgroundColor: Color(0xff364CC6),
          ),
          // GButton(
          //   icon: Icons.favorite_border_outlined,
          //   text: "favorite",
          //   backgroundColor: Color(0xff364CC6),
          // ),
          // GButton(
          //   icon: Icons.chat_bubble_outline,
          //   text: "chat",
          //   backgroundColor: Color(0xff364CC6),
          // ),
          GButton(
            icon: Icons.person_2_outlined,
            text: "profile",
            backgroundColor: Color(0xff364CC6),
          ),
        ],
        selectedIndex: navBarIndex,
        onTabChange: (index) {
          setState(() {
            navBarIndex = index;
          });
        },
      ),
    );
  }
}
