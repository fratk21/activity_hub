import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communityNotif/viewModel/notifcard.dart';
import 'package:toplulugum/app/userModule/view/widgets/appbar.dart';
import 'package:toplulugum/core/widgets/buttonmodel.dart';
import 'package:toplulugum/core/widgets/dividerText.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textfieldmodel.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';

class CommNotifScreen extends StatefulWidget {
  const CommNotifScreen({super.key});

  @override
  State<CommNotifScreen> createState() => _CommNotifScreenState();
}

class _CommNotifScreenState extends State<CommNotifScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarview(true, context),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MyTextField(
                  line: 1,
                  controller: controller,
                  hintText: "Duyuru Başlığı ",
                  obscureText: false,
                  prefixIcon: Icon(CupertinoIcons.bell)),
              sizedBoxH(10),
              MyTextField(
                  line: 3,
                  controller: controller,
                  hintText: "Duyuru Açıklaması ",
                  obscureText: false,
                  prefixIcon: Icon(CupertinoIcons.bell)),
              sizedBoxH(10),
              customButton(
                height: 0.06,
                context: context,
                text: "Duyuru Olustur",
                onPressed: () {},
              ),
              sizedBoxH(10),
              dividerText(labelText: "Duyurular"),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Expanded(child: infocard());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
