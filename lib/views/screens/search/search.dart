// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/widgets/search_song.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../home/components/headers.dart';
import '../library/components/library_menu.dart';
import '../library/components/recently_played.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  'Discover Songs',
                  style: bodyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                sizedHeight20,
                SearchSong(),
                // LibraryMenu(),
                sizedHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Header(heading: 'Searched Recently'),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Clear all',
                          style: buttonTextStyle,
                        ))
                  ],
                ),
                sizedHeight10,
                // RecentlyPlayed(),
                Header(heading: 'Suggested For You'),
                sizedHeight10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: size.width * .45,
                      color: secondaryColor,
                    ),
                    Text(
                      'Suggested',
                      style: bodyTextStyle.copyWith(fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
