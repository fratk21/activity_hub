import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';

Widget headertext(String text) {
  return CustomText(
    alignment: MainAxisAlignment.start,
    text: text,
    style: GoogleFonts.orbitron(
      textStyle: TextStyle(
        fontSize: 18,
        color: AppColors.gblue,
        letterSpacing: 8,
      ),
    ),
  );
}
