import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget child;

  CustomPadding({
    this.padding = const EdgeInsets.all(8.0),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: child,
    );
  }
}
