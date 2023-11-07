import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/BottomNavigator/viewModel/model.dart';
import 'package:toplulugum/app/userModule/view/activity/activity.dart';
import 'package:toplulugum/app/userModule/view/home/home.dart';
import 'package:toplulugum/app/userModule/view/profile/profile.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomUserBarPages.length, (index) => bottomUserBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomUserBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.white,
              showLabel: false,
              notchColor: Colors.white,
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: BottomBarItems(usermodel),
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}
