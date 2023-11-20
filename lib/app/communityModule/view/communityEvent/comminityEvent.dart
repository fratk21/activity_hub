import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communityEvent/viewModel/ComminityEventViewModel.dart';
import 'package:toplulugum/app/global/widgets/appbar.dart';

class CommunityEvent extends StatefulWidget {
  const CommunityEvent({super.key});

  @override
  State<CommunityEvent> createState() => _CommunityEventState();
}

class _CommunityEventState extends State<CommunityEvent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarview(true, context),
        body: ComminityEventbody(context),
      ),
    );
  }
}
