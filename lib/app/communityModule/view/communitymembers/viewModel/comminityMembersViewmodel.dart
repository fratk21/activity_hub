import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communitymembers/viewModel/membersViewModel.dart';
import 'package:toplulugum/app/global/widgets/Headertext.dart';

Widget ComminityMembersbody(BuildContext context) {
  return Column(
    children: [
      headertext("Üyeler"),
      Expanded(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Expanded(child: Membersview());
          },
        ),
      ),
    ],
  );
}
