import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final MainAxisAlignment? alignment;
  final int maxLines;
  final Function()? ontap;

  CustomText(
      {required this.text,
      this.style,
      this.alignment,
      this.maxLines = 1,
      this.ontap});

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: widget.alignment == null
          ? Text(
              widget.text,
              style: widget.style,
              textAlign: TextAlign.left,
              maxLines: widget.maxLines,
              overflow: TextOverflow.ellipsis,
            )
          : Row(
              mainAxisAlignment: widget.alignment!,
              children: [
                Expanded(
                  child: Text(
                    widget.text,
                    style: widget.style,
                    textAlign: TextAlign.left,
                    maxLines: widget.maxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
    );
  }
}
