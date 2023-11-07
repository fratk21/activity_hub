import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/userModule/view/activity/activity.dart';
import 'package:toplulugum/app/userModule/view/home/home.dart';
import 'package:toplulugum/app/userModule/view/profile/profile.dart';

List<Map<String, dynamic>> usermodel = [
  {
    "icon": Icons.home_filled,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Page 1",
  },
  {
    "icon": Icons.event_note_outlined,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Page 2",
  },
  {
    "icon": Icons.person,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Settings",
  },
];
List<Map<String, dynamic>> comminitymodel = [
  {
    "icon": Icons.home_work_rounded,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Page 1",
  },
  {
    "icon": Icons.add,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Page 2",
  },
  {
    "icon": Icons.apartment_rounded,
    "activeColor": Colors.black,
    "inActiveColor": Colors.blueGrey,
    "label": "Settings",
  },
];
List<BottomBarItem> BottomBarItems(List<Map<String, dynamic>> itemList) {
  return itemList.map((item) {
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
}

final List<Widget> bottomUserBarPages = [
  const HomeScreen(),
  const activityScreen(),
  const profileScreen(),
];
final List<Widget> bottomCommunityBarPages = [
  const HomeScreen(),
  const activityScreen(),
  const profileScreen(),
];
