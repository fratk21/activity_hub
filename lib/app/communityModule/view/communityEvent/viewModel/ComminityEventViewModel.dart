import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/global/widgets/cuponcard.dart';
import 'package:toplulugum/core/widgets/buttonmodel.dart';
import 'package:toplulugum/core/widgets/dividerText.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textfieldmodel.dart';

TextEditingController controller = TextEditingController();

Widget ComminityEventbody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(
              line: 1,
              controller: controller,
              hintText: "Etkinlik Başlığı ",
              obscureText: false,
              prefixIcon: Icon(CupertinoIcons.bookmark)),
          sizedBoxH(10),
          MyTextField(
              line: 3,
              controller: controller,
              hintText: "Etkinlik Açıklaması ",
              obscureText: false,
              prefixIcon: Icon(CupertinoIcons.doc)),
          sizedBoxH(10),
          MyTextField(
              line: 3,
              controller: controller,
              hintText: "Etkinlik adresi",
              obscureText: false,
              prefixIcon: Icon(CupertinoIcons.location_solid)),
          sizedBoxH(10),
          MyTextField(
              type: TextInputType.number,
              line: 1,
              controller: controller,
              hintText: "Etkinlik Ücreti",
              obscureText: false,
              prefixIcon: Icon(Icons.money)),
          sizedBoxH(10),
          customButton(
            height: 0.06,
            context: context,
            text: "Etkinlik Olustur",
            onPressed: () {},
          ),
          sizedBoxH(10),
          dividerText(labelText: "Etkinlikler"),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: cuponcardModel(
                      money: "10",
                      location: "koala kafe",
                      commintiyname: "Bilişim Toplulupu",
                      eventheader: "c dersi",
                      eventdescription: "eventdescription",
                      date: "20/12/2130"),
                ),
              );
            },
          )
        ],
      ),
    ),
  );
}
