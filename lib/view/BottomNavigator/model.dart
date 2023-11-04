import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> data = [
  {
    "icon": Icons.home_filled,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Page 1",
  },
  {
    "icon": Icons.person,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Page 2",
  },
  {
    "icon": Icons.settings,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Settings",
  },
];

List<BottomBarItem> bottomBarItems = data.map((item) {
  return BottomBarItem(
    inActiveItem: Icon(
      item["icon"],
      color: item["inActiveColor"],
    ),
    activeItem: Icon(
      item["icon"],
      color: item["activeColor"],
    ),
    itemLabel: item["label"],
  );
}).toList();
