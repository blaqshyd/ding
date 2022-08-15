import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: bodyTextStyle.copyWith(
        color: Colors.green,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
