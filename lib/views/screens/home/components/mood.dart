// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/constants.dart';

class Mood extends StatelessWidget {
  const Mood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(right: 8, bottom: 5),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Relax',
                style: bodyTextStyle.copyWith(fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}
