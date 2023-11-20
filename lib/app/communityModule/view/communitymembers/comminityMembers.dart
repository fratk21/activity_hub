import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communitymembers/viewModel/comminityMembersViewmodel.dart';
import 'package:toplulugum/app/global/widgets/appbar.dart';

class ComminityMembers extends StatefulWidget {
  const ComminityMembers({super.key});

  @override
  State<ComminityMembers> createState() => _ComminityMembersState();
}

class _ComminityMembersState extends State<ComminityMembers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarview(true, context),
        body: ComminityMembersbody(context),
      ),
    );
  }
}
