import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';
import 'package:toplulugum/app/userModule/view/profile/modelview/comminityCard.dart';
import 'package:toplulugum/app/userModule/view/settings/settings.dart';
import 'package:toplulugum/app/userModule/view/widgets/appbar.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarview(false, context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  child: RandomAvatar(
                    DateTime.now().toIso8601String(),
                  ),
                ),
              ),
              sizedBoxH(5),
              Text(
                "Fırat Kaya",
                style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: AppColors.black,
                    letterSpacing: 5,
                  ),
                ),
              ),
              sizedBoxH(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomText(
                        alignment: MainAxisAlignment.start,
                        text: "Topluluklarım",
                        style: GoogleFonts.orbitron(
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: AppColors.black,
                            letterSpacing: 8,
                          ),
                        )),
                  ),
                  IconButton(
                      onPressed: () {
                        PageNavigator.push(context, SettingScreen());
                      },
                      icon: Icon(Icons.settings))
                ],
              ),
              Center(
                child: gradientCardSample(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
