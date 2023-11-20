import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communityHome/model/choiceList.dart';
import 'package:toplulugum/app/communityModule/view/communityHome/viewModel/comminityHomeViewmodel.dart';
import 'package:toplulugum/app/communityModule/view/communityNotif/communityNotif.dart';
import 'package:toplulugum/app/global/widgets/appbar.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';

class ComumminityHome extends StatefulWidget {
  const ComumminityHome({super.key});

  @override
  State<ComumminityHome> createState() => _ComumminityHomeState();
}

class _ComumminityHomeState extends State<ComumminityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarview(false, context),
      body: homebody(context),
    );
  }
}
