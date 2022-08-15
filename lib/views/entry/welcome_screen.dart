// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void toSignUp() {
      Navigator.pushNamed(context, registerRoute);
    }

    void toLogIn() {
      Navigator.pushNamedAndRemoveUntil(
          context, loginRoute, (context) => false);
    }

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
              onPressed: toSignUp,
              child: Text(
                'Sign Up',
                style: buttonTextStyle,
              ),
            ),
            sizedHeight10,
            OutlinedButton(
              style: secondaryButtonStyle,
              onPressed: toLogIn,
              child: Text(
                'Log In',
                style: buttonTextStyle,
              ),
            ),
            sizedHeight20,
            MyDivider(
              label: 'OR',
              labelFamily: 'Poppins',
              labelSize: 14,
              labelColor: Colors.white,
              color: Colors.grey,
              indentleft: 40,
              indentright: 40,
            ),
            sizedHeight20,
            TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  primary: buttonTextColor,
                ),
                onPressed: () {},
                icon: Image.asset(
                  'assets/logos/google.png',
                  height: 38,
                  width: 38,
                ),
                label: Text(
                  'Sign up with Google',
                  style: buttonTextStyle,
                )),
            TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  primary: buttonTextColor,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/logos/apple.svg',
                  color: buttonTextColor,
                  height: 32,
                  width: 32,
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
