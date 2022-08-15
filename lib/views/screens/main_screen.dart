// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ding_app/constants/colors.dart';
// import 'package:ding_app/views/screens/home/components/bottom_nav.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import 'account/account.dart';
import 'home/home.dart';
import 'library/library.dart';
import 'search/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List pages = [
    HomeScreen(),
    LibraryScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: pages[selectedIndex],
      bottomNavigationBar: bottomNav(),
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      onTap: (int index) => setState(() {
        selectedIndex = index;
      }),
      currentIndex: selectedIndex,
      backgroundColor: backgroundColor,
      fixedColor: primaryColor,
      unselectedItemColor: secondaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(FeatherIcons.music), label: 'Library'),
        BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user), label: 'Account'),
      ],
    );
  }
}
