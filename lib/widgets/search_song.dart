import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/constants.dart';

class SearchSong extends StatelessWidget {
  const SearchSong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyFormField(
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
    );
  }
}