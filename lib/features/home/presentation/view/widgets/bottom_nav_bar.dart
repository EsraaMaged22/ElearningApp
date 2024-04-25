import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(NavigationController())

    return  Scaffold(
      bottomNavigationBar: NavigationBar( height: 80,
        elevation: 0,
        selectedIndex: 0, // controller.selectedIndex.value,
        //onDestinationSelected:  ,onDestinationSelected: (index)=>  ,
        //controller.selectedIndex.value=
        // index,
        destinations: const  [
        NavigationDestination( icon: Icon(Icons.home,color: Color(0xff364CC6)),
          label: 'Home''',),
        NavigationDestination( icon: Icon(Icons.search,color: Color(0xff364CC6)),
          label: 'Search''',),
        NavigationDestination( icon: Icon(Icons.play_arrow,color: Color(0xff364CC6)),
          label: 'Play''',),
        NavigationDestination( icon: Icon(Icons.chat_bubble_outline,color: Color(0xff364CC6)),
          label: 'Chat''',),
        NavigationDestination( icon: Icon(Icons.person,color: Color(0xff364CC6)),
          label: 'Profile''',),
      ],),
      body:Container() ,
    );
  }
}

