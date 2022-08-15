// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/constants/constants.dart';
import 'package:ding_app/views/screens/home/components/headers.dart';
import 'package:flutter/material.dart';

import 'components/mood.dart';
import 'components/top_picks.dart';
import 'components/trending.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  'Hello Maxwell',
                  style: bodyTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                sizedHeight20,
                Header(heading: 'Top Picks'),
                sizedHeight10,
                TopPicks(),
                Header(heading: 'Trending in Nigeria'),
                sizedHeight10,
                Trending(),
                // sizedHeight05,
                Header(heading: 'Moods'),
                sizedHeight10,
                Mood(),
                sizedHeight10,
                Header(heading: 'Trending in USA'),
                sizedHeight10,
                Trending(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
