// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/constants.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        // padding: EdgeInsets.only(right: 5),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 8, bottom: 5),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Naija Hot Hits',
                  style: bodyTextStyle.copyWith(fontSize: 14),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
