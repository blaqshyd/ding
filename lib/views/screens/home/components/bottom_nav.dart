// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:ding_app/views/screens/home/home.dart';
// import 'package:feather_icons/feather_icons.dart';
// import 'package:flutter/material.dart';

// import '../../../../constants/colors.dart';
// import '../../account/account.dart';
// import '../../library/library.dart';
// import '../../search/search.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//     BottomNavigationBar bottomNav() {
//     return BottomNavigationBar(
//       onTap: (int index) => setState(() {
//         selectedIndex = index;
//       }),
//       currentIndex: selectedIndex,
//       backgroundColor: backgroundColor,
//       fixedColor: primaryColor,
//       unselectedItemColor: secondaryColor,
//       type: BottomNavigationBarType.fixed,
//       items: [
//         BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: 'Home'),
//         BottomNavigationBarItem(
//             icon: Icon(FeatherIcons.music), label: 'Library'),
//         BottomNavigationBarItem(
//             icon: Icon(FeatherIcons.search), label: 'Search'),
//         BottomNavigationBarItem(
//             icon: Icon(FeatherIcons.user), label: 'Account'),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
