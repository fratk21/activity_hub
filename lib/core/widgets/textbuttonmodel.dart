import 'package:flutter/material.dart';

Widget customTextButton({
  required String text,
  required VoidCallback onPressed,
  IconData? icon,
  Color? textColor,
  double fontSize = 16.0,
  FontWeight fontWeight = FontWeight.normal,
  EdgeInsetsGeometry? padding,
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      padding: padding,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null)
          Icon(
            icon,
            color: textColor,
          ),
        if (icon != null)
          SizedBox(
              width: 8.0), // İstediğiniz boşluk miktarını ayarlayabilirsiniz.
        Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    ),
  );
}
