import 'package:flutter/material.dart';

import 'package:toplulugum/app/userModule/view/activity/viewmodel/activityModelview.dart';

import 'package:toplulugum/app/userModule/view/widgets/appbar.dart';

class activityScreen extends StatefulWidget {
  const activityScreen({super.key});

  @override
  State<activityScreen> createState() => _activityScreenState();
}

class _activityScreenState extends State<activityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarview(),
      body: activitybody(),
    );
  }
}
