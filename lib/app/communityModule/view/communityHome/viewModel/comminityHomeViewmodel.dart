import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communityHome/viewModel/choiceCardViewmodel.dart';

Widget choiceView(List choice) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: choice.length,
    itemBuilder: (context, index) {
      return comminityChoice(
        title: choice[index].title,
        description: choice[index].description,
        function: choice[index].onPressed,
      );
    },
  );
}
