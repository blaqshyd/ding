// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/routes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isSignupLoading = false;
  bool isLoginLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: bodyPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            // sizedHeight60,
            Text(
              'Discover more sounds in seconds.',
              textAlign: TextAlign.center,
              style: bodyTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            // sizedHeight60,
            ElevatedButton(
              style: primaryButtonStyle,
              onPressed: () async {
                setState(() {
                  isSignupLoading = true;
                });
                await Future.delayed(Duration(seconds: 3), () {
                  setState(() {
                    isSignupLoading = false;
                  });
                  Navigator.pushNamed(context, registerRoute);
                });
              },
              child: isSignupLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text(
                      'Sign Up',
                      style: buttonTextStyle,
                    ),
            ),
            sizedHeight10,
            OutlinedButton(
              style: secondaryButtonStyle,
              onPressed: () async {
                setState(() {
                  isLoginLoading = true;
                });
                await Future.delayed(Duration(seconds: 3), () {
                  setState(() {
                    isLoginLoading = false;
                  });
                  Navigator.pushNamedAndRemoveUntil(
                      context, loginRoute, (context) => false);
                });
              },
              child: isLoginLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text(
                      'Log In',
                      style: buttonTextStyle,
                    ),
            ),
            sizedHeight20,
            // MyDivider(
            //   label: 'OR',
            //   labelFamily: 'Poppins',
            //   labelSize: 14,
            //   labelColor: Colors.white,
            //   color: Colors.grey,
            //   indentleft: 40,
            //   indentright: 40,
            // ),
            sizedHeight20,
            TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  foregroundColor: buttonTextColor,
                ),
                onPressed: () {},
                icon: Image.asset(
                  'assets/logos/google.png',
                  height: 30,
                  width: 30,
                ),
                label: Text(
                  'Sign up with Google',
                  style: buttonTextStyle,
                )),
            TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  primary: buttonTextColor,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/logos/apple.svg',
                  color: buttonTextColor,
                  height: 26,
                  width: 26,
                ),
                label: Text(
                  'Sign up with Apple',
                  style: buttonTextStyle,
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
