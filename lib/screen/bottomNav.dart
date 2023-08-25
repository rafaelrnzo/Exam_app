// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exam_app/screen/exam/index.dart';
import 'package:exam_app/screen/home/index.dart';
import 'package:exam_app/screen/leaderboard/index.dart';
import 'package:exam_app/screen/profile/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Leaderboard(),
    Profile(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 10.h,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Ionicons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.trophy),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.person),
              label: 'Profile',
            ),
           
          ],
        ),
      ),
    );
  }
}
