// ignore_for_file: prefer_const_constructors

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/constants.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: secondaryColor,
          indent: 15,
          endIndent: 15,
        ),
        padding: EdgeInsets.only(right: 0, left: 0),
        // scrollDirection: Axis.vertical,
        itemCount: 13,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              margin: EdgeInsets.only(right: 5),
              width: 70,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            title: Text(
              'Bandana',
              style: bodyTextStyle.copyWith(fontSize: 16),
            ),
            subtitle: Text(
              'Fireboy DML ft Asake',
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
