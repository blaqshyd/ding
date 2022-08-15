// ignore_for_file: prefer_const_constructors

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/views/screens/library/components/recently_played.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../home/components/headers.dart';
import 'components/library_menu.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: bodyPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Library',
                  style: bodyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                sizedHeight20,
                LibraryMenu(),
                sizedHeight10,
                Header(heading: 'Recently Played'),
                sizedHeight10,
                RecentlyPlayed(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
