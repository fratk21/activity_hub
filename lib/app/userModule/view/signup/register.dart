import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/global/pages/BottomNavigator/viewModel/model.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';
import 'package:toplulugum/core/widgets/buttonmodel.dart';
import 'package:toplulugum/core/widgets/showsnackbar.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textfieldmodel.dart';
import 'package:toplulugum/app/global/pages/BottomNavigator/Bnavigator.dart';

import 'package:toplulugum/app/userModule/view/home/home.dart';
import 'package:toplulugum/app/userModule/view/signup/services/function.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _mailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  TextEditingController _repasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Images/register.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                PageNavigator.pop(context);
              },
              icon: Icon(
                CupertinoIcons.left_chevron,
                color: AppColors.white,
                size: 30,
              )),
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                'Create\nAccount',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 60,
                  fontFamily: "BlackOpsOne",
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          MyTextField(
                              controller: _namecontroller,
                              hintText: "Name & Surname",
                              obscureText: false,
                              prefixIcon: Icon(Icons.person)),
                          sizedBoxH(30),
                          MyTextField(
                              controller: _mailcontroller,
                              hintText: "E-mail",
                              obscureText: false,
                              prefixIcon: Icon(Icons.mail_outline)),
                          sizedBoxH(30),
                          Row(
                            children: [
                              Expanded(
                                  child: MyTextField(
                                      controller: _passcontroller,
                                      hintText: "Password",
                                      obscureText: true,
                                      prefixIcon: Icon(Icons.lock))),
                              sizedBoxW(5),
                              Expanded(
                                  child: MyTextField(
                                      controller: _repasscontroller,
                                      hintText: "Re-Password",
                                      obscureText: true,
                                      prefixIcon: Icon(Icons.lock))),
                            ],
                          ),
                          sizedBoxH(30),
                          customButton(
                            context: context,
                            text: "register",
                            backgroundColor: AppColors.crema.withOpacity(0.8),
                            onPressed: () async {
                              String? back = await registerWithEmailAndPassword(
                                  _passcontroller,
                                  _repasscontroller,
                                  _namecontroller,
                                  _mailcontroller);
                              if (back != null) {
                                showSnackBar(
                                    context, AppColors.errorcolors, back);
                              } else {
                                showSnackBar(context, AppColors.shadowColorDark,
                                    "Hoş geldin seni aramızda gördüğümüze çok sevindim , anasayfaya yönlendiriliyorsun ");
                                Duration(milliseconds: 750);
                                PageNavigator.push(
                                    context,
                                    BottomNavigator(
                                        widgetList: bottomUserBarPages));
                              }
                            },
                          ),
                          sizedBoxH(40),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
