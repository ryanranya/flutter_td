import 'package:flutter/material.dart';

class TDBottomBarItem extends BottomNavigationBarItem {
  TDBottomBarItem(@required String unSelectImageName,
      @required String selectImageName, @required String title)
      : super(
          title: Text(title),
          icon: Image.asset(
            "assets/images/tabbar/${unSelectImageName}.png",
            width: 30,
            gaplessPlayback: true,
          ),
          activeIcon: Image.asset(
            "assets/images/tabbar/${selectImageName}.png",
            width: 30,
            gaplessPlayback: true,
          ),
        );
}
