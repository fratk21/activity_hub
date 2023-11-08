import 'package:flutter/material.dart';

import 'package:toplulugum/app/userModule/view/home/viewmodel/shopDiscount.dart';

import 'package:toplulugum/app/userModule/view/widgets/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarview(false, context),
      body: homebody(),
    );
  }
}
