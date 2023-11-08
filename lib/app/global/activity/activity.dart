import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';

import 'package:toplulugum/app/global/activity/viewmodel/activityModelview.dart';

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
      appBar: appBarview(false, context),
      body: activitybody(ViewType.DAILY),
    );
  }
}
