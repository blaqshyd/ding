// ignore_for_file: prefer_const_constructors

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/constants.dart';

class LibraryMenu extends StatelessWidget {
  LibraryMenu({Key? key}) : super(key: key);

  final List<String> libraryMenu = [
    'Downloads',
    'Favorites',
    'Playlists',
    'Albums',
  ];

  final List<IconData> icon = [
    FeatherIcons.music,
    FeatherIcons.heart,
    FeatherIcons.playCircle,
    FeatherIcons.book,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        // padding: EdgeInsets.only(right: 5),

        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(
              icon[index],
              color: secondaryColor,
            ),
            title: Text(
              libraryMenu[index],
              style: bodyTextStyle.copyWith(fontSize: 16),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColor,
              size: 16,
            ),
          );
        },
      ),
    );
  }
}
