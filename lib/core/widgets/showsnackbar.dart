import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/colors.dart';

void showSnackBar(BuildContext context, Color backgroundColor, String text) {
  final snackBar = SnackBar(
    content: Text(text),
    backgroundColor: backgroundColor,
    behavior: SnackBarBehavior.floating,
    duration: Duration(milliseconds: 10000),
    action: SnackBarAction(
      label: 'Kapat',
      disabledTextColor: Colors.white,
      textColor: AppColors.white,
      onPressed: () {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
