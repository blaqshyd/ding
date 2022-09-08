// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

class SearchSong extends StatelessWidget {
  const SearchSong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: MyFormField(
            inputTextStyle: inputTextStyle,
            inputHint: 'Search artiste name',
            inputHintStyle: hintTextStyle,
            contentPadding: inputPadding.copyWith(
              top: 10,
              bottom: 10,
            ),
            inputFilled: true,
            inputFillColor: inputColor,
            border: enabledBorder,
            focusedBorder: focusedBorder,
          ),
        ),
        sizedWidth10,
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: primaryColor,
            onPrimary: buttonTextColor,
            padding: EdgeInsets.symmetric(vertical: 22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text('Air'),
        )
      ],
    );
  }
}
