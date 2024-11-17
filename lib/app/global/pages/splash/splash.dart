import 'package:flutter/material.dart';
import 'package:random_text_reveal/random_text_reveal.dart';
import 'package:toplulugum/app/global/pages/BottomNavigator/viewModel/model.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';
import 'package:toplulugum/core/widgets/pagemodel.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/app/global/pages/BottomNavigator/Bnavigator.dart';
import 'package:toplulugum/app/userModule/view/login/login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void splash() async {
    await Future.delayed(Duration(seconds: 3));
    PageNavigator.push(
        context, BottomNavigator(widgetList: bottomCommunityBarPages));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildCustombody(context),
      backgroundColor: AppColors.white,
    );
  }
}

Widget buildCustombody(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        // sizedBoxH(MediaQuery.of(context).size.height / 2 - 100),
        RandomTextReveal(
          text: 'Activity Hub',
          duration: Duration(seconds: 2),
          randomString: Source.alphabets,
          style: GoogleFonts.orbitron(
            textStyle: const TextStyle(
              fontSize: 40,
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 8,
            ),
          ),
          maxLines: 1,
          curve: Curves.easeIn,
          onFinished: () {},
        ),
        // CustomText(
        //   text: "TOPLULUĞUM",
        //   style: TextStyle(
        //     fontFamily: "BlackOpsOne",
        //     fontSize: 50,
        //     color: AppColors.white,
        //   ),
        // ),
        //  sizedBoxH(MediaQuery.of(context).size.height / 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Projeckt",
              style: TextStyle(
                fontFamily: "BlackOpsOne",
                fontSize: 20,
                color: AppColors.black,
              ),
            ),
            sizedBoxW(5),
            CustomText(
              text: "Error",
              style: TextStyle(
                fontFamily: "BlackOpsOne",
                fontSize: 20,
                color: AppColors.errorcolors,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
