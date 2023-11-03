import 'package:flutter/material.dart';

import 'package:toplulugum/core/utils/colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    Widget? title,
    Color? backgroundColor,
    Widget? leading,
    List<Widget>? actions,
    bool? centerTitle,
    double elevation = 0.0,
    double height = kToolbarHeight,
    bool automaticallyImplyLeading = true,
    PreferredSizeWidget? bottom,
  }) : super(
          key: key,
          title: title,
          backgroundColor: backgroundColor ?? AppColors.flashwhite,
          leading: leading,
          actions: actions,
          centerTitle: centerTitle ?? true,
          elevation: elevation,
          toolbarHeight: height,
          automaticallyImplyLeading: automaticallyImplyLeading,
          bottom: bottom,
        );
}
