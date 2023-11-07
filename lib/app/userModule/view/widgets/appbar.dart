import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/appbarmodel.dart';

AppBar appBarview() {
  return CustomAppBar(
    backgroundColor: AppColors.transparent,
    elevation: 0,
    centerTitle: true,
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
