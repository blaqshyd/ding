// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/constants/constants.dart';
import 'package:ding_app/utils/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), toWelcomeScreen);
  }

  void toWelcomeScreen() {
    Navigator.pushNamed(context, welcomeRoute);
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                'assets/logos/ding_logo.png',
                // color: Colors.redAccent,
                fit: BoxFit.contain,
              ),
            ),
            sizedHeight20,
            Text(
              'ding',
              style: bodyTextStyle,
            ),
            // sizedHeight40,
            // CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
