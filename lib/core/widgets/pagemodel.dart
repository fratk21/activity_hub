import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/utils/pading.dart';

class PageModel extends StatefulWidget {
  final AppBar? appBar;
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  final Color? backgroundcolor;
  PageModel(
      {Key? key,
      this.appBar,
      required this.body,
      this.floatingActionButton,
      this.backgroundcolor})
      : super(key: key);

  @override
  _PageModelState createState() => _PageModelState();
}

class _PageModelState extends State<PageModel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.backgroundcolor ?? AppColors.white,
        appBar: widget.appBar,
        body: CustomPadding(child: widget.body),
        floatingActionButton: widget.floatingActionButton,
      ),
    );
  }
}
