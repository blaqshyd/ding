// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/constants/constants.dart';
import 'package:ding_app/utils/routes.dart';
import 'package:flutter/material.dart';

import '../../widgets/search_song.dart';

class SuggestionScreen extends StatelessWidget {
  const SuggestionScreen({Key? key}) : super(key: key);

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
              children: [
                sizedHeight10,
                SizedBox(
                  height: size.height * 0.22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select favourite\nartiste',
                        style: bodyTextStyle.copyWith(
                          wordSpacing: 6,
                          height: 1.2,
                          // fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      sizedHeight20,
                      SearchSong(),
                    ],
                  ),
                ),
                sizedHeight20,
                SizedBox(
                  height: size.height * 0.46,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 90,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 30,
                                child: Image(
                                  image: AssetImage(
                                    'assets/artiste/Upstream-8.png',
                                  ),
                                )),
                            sizedHeight05,
                            Text(
                              'J.Cole',
                              style: buttonTextStyle,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                sizedHeight20,
                SizedBox(
                  height: size.height * 0.15,
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: primaryButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, mainRoute);
                        },
                        child: Text(
                          'Continue',
                          style: buttonTextStyle,
                        ),
                      ),
                      sizedHeight10,
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: buttonTextStyle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
