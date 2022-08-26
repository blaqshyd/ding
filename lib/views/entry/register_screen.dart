// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ding_app/constants/colors.dart';
import 'package:ding_app/constants/constants.dart';
import 'package:ding_app/utils/routes.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isSignupLoading = false;
  bool isLoginLoading = false;

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
                TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: buttonTextColor,
                    size: 18,
                  ),
                  label: Text(
                    'Back',
                    style: buttonTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                sizedHeight20,
                Text(
                  'Sign Up',
                  style: bodyTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                sizedHeight60,
                FormField(
                  label: 'Name',
                  hint: 'John Doe',
                ),
                sizedHeight20,
                FormField(
                  label: 'Email',
                  hint: 'johndoe@gmail.com',
                ),
                sizedHeight20,
                FormField(
                  label: 'Password',
                  hint: 'Password',
                  obscureText: true,
                ),
                sizedHeight20,
                FormField(
                  label: 'Confirm Password',
                  hint: 'Confirm Password',
                  obscureText: true,
                ),
                sizedHeight40,
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
                      Navigator.pushNamedAndRemoveUntil(
                          context, suggestionRoute, (context) => false);
                    });
                  },
                  child: isSignupLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                          'Sign Up',
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

class FormField extends StatelessWidget {
  const FormField({
    Key? key,
    required this.label,
    required this.hint,
    this.obscureText,
  }) : super(key: key);

  final String label, hint;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return MyFormField(
      inputTextStyle: inputTextStyle,
      inputLabel: label,
      inputHint: hint,
      obscureText: obscureText,
      inputHintStyle: hintTextStyle,
      inputLabelStyle: TextStyle(color: secondaryColor),
      inputFilled: true,
      contentPadding: inputPadding,
      inputFillColor: inputColor,
      border: enabledBorder,
      focusedBorder: focusedBorder,
    );
  }
}
