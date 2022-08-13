import 'package:ding_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: bodyPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedHeight20,
                Text(
                  'Log In',
                  style: bodyTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                sizedHeight60,
                MyFormField(
                  // isDense: true,
                  contentPadding: inputPadding,
                  inputFilled: true,
                  inputFillColor: inputColor,
                  border: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                sizedHeight20,
                MyFormField(
                  inputFilled: true,
                  contentPadding: inputPadding,
                  inputFillColor: inputColor,
                  border: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                sizedHeight20,
                MyFormField(
                  inputFilled: true,
                  contentPadding: inputPadding,
                  inputFillColor: inputColor,
                  border: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                sizedHeight40,
                ElevatedButton(
                  style: primaryButtonStyle,
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style: buttonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
