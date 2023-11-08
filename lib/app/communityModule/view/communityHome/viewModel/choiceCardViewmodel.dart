import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/buttonmodel.dart';

class comminityChoice extends StatelessWidget {
  final String title;
  final String description;
  final Function()? function;
  comminityChoice(
      {Key? key,
      required this.title,
      required this.description,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: function,
        child: CouponCard(
          height: 150,
          curvePosition: 60,
          curveRadius: 30,
          borderRadius: 10,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.shadowColorDark, AppColors.dpurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          firstChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: GoogleFonts.orbitron(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 8,
                    ),
                  )),
            ],
          ),
          secondChild: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.white),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 42),
            child: Text(description,
                style: GoogleFonts.orbitron(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 8,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
