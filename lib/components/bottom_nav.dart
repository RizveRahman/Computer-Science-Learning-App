import 'package:computer_science_in_bangla/pages/explore_courses_page.dart';
import 'package:computer_science_in_bangla/pages/home_page.dart';
import 'package:computer_science_in_bangla/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectIndex = 0;

  //List of Screen
  List screen = [
    const HomePage(),
    const ExploreCourses(),
    const ProfilePage(),
  ];

  int currentIndex = 0;
  void onTapNav(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  screen[currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(15),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.star,
                text: 'Explore',
              ),
              // GButton(
              //   icon: Icons.search,
              //   text: 'Search',
              // ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
              onTabChange: (index) {
              setState(() {
              currentIndex = index;
              });
             },
          ),
        ),
      ),
    );
  }
}
