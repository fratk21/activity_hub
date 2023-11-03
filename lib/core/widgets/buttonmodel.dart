import 'package:flutter/material.dart';
import '../utils/colors.dart';

Widget customButton({
  double width = 0.8,
  double height = 0.08,
  Color backgroundColor = AppColors.orange,
  String text = 'Go Go',
  VoidCallback? onPressed,
  IconData? iconData,
  double borderRadius = 15.0,
  required BuildContext context,
}) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  return SizedBox(
    width: screenWidth * width,
    height: screenHeight * height,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              size: 20,
              color: Colors.white,
            ),
          SizedBox(
            width: iconData != null ? screenWidth * 0.02 : 0,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
