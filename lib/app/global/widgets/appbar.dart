import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';
import 'package:toplulugum/core/widgets/appbarmodel.dart';

AppBar appBarview(bool auto, context) {
  return CustomAppBar(
    backgroundColor: AppColors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: auto
        ? IconButton(
            onPressed: () {
              PageNavigator.pop(context);
            },
            icon: Icon(CupertinoIcons.left_chevron))
        : null,
    title: Text(
      "Activity Hub",
      style: GoogleFonts.orbitron(
        textStyle: TextStyle(
          fontSize: 30,
          color: AppColors.black,
          letterSpacing: 8,
        ),
      ),
    ),
    automaticallyImplyLeading: false,
  );
}
