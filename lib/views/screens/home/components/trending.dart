// ignore_for_file: prefer_const_constructors

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/constants.dart';

class Trending extends StatelessWidget {
  final List title = [
    'Stay',
    'Bandana',
    'Buga',
  ];
  final List artiste = [
    'Justin Bieber ft Kid Laroi',
    'Fireboy DML',
    'Kizz Daniel'
  ];

  Trending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: secondaryColor,
          indent: 15,
          endIndent: 15,
        ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              padding: EdgeInsets.only(bottom: 5),
              margin: EdgeInsets.only(right: 5),
              width: 70,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            title: Text(
              title[index],
              style: bodyTextStyle.copyWith(fontSize: 16),
            ),
            subtitle: Text(
              artiste[index],
              style: bodyTextStyle.copyWith(
                fontSize: 12,
                color: secondaryColor,
              ),
            ),
            trailing: Icon(
              FeatherIcons.arrowDownCircle,
              color: secondaryColor,
              size: 18,
            ),
          );
        },
      ),
    );
  }
}
