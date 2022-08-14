// ignore_for_file: prefer_const_constructors

import 'package:ding_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // bool isChecked = false;

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
                  inputLabel: 'Email',
                  inputHint: 'johndoe@gmail.com',
                  inputHintStyle: hintTextStyle,
                  inputLabelStyle: TextStyle(color: secondaryColor),
                  contentPadding: inputPadding,
                  inputFilled: true,
                  inputFillColor: inputColor,
                  border: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                sizedHeight20,
                MyFormField(
                  inputLabel: 'Password',
                  inputHint: '********',
                  inputHintStyle: hintTextStyle,
                  inputLabelStyle: TextStyle(color: secondaryColor),
                  inputFilled: true,
                  contentPadding: inputPadding,
                  inputFillColor: inputColor,
                  border: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                sizedHeight20,
                MyFormField(
                  inputLabel: 'Confirm Password',
                  inputHint: '********',
                  inputHintStyle: hintTextStyle,
                  inputLabelStyle: TextStyle(color: secondaryColor),
                  inputFilled: true,
                  contentPadding: inputPadding,
                  inputFillColor: inputColor,
                  border: enabledBorder,
                  focusedBorder: focusedBorder,
                ),
                sizedHeight20,
                Row(
                  children: [
                    Text(
                      'Stay Logged In',
                      style: buttonTextStyle,
                    ),
                    sizedWidth05,
                    Checkbox(
                      value: isChecked,
                      activeColor: secondaryColor,
                      checkColor: primaryColor,
                      focusColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onChanged: (isChecked) {
                        setState(() {
                          this.isChecked = isChecked!;
                        });
                      },
                    ),
                  ],
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
