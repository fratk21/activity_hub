import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon prefixIcon;
  final Function()? onChanged;
  final double? height;
  final int? line;
  final TextInputType? type;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.prefixIcon,
      this.line,
      this.height,
      this.onChanged,
      this.type});

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: HexColor("#f0f3f1").withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: widget.type,
        maxLines: widget.line,
        controller: widget.controller,
        obscureText: isObscure,
        cursorColor: HexColor("#4f4f4f"),
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          hintStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: HexColor("#8d8d8d"),
          ),
          border: InputBorder.none,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: HexColor("#4f4f4f"),
          suffixIcon: widget.obscureText
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                    color: HexColor("#4f4f4f"),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
