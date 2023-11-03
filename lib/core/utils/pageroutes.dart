import 'package:flutter/material.dart';

class PageNavigator {
  static Future<void> push(BuildContext context, Widget page) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static Future<void> pushReplacement(BuildContext context, Widget page) async {
    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
