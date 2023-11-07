import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textbuttonmodel.dart';
import 'package:toplulugum/core/widgets/textfieldmodel.dart';
import 'package:toplulugum/app/userModule/view/signup/register.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widgets/buttonmodel.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Images/login.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 60,
                  fontFamily: "BlackOpsOne",
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          MyTextField(
                              controller: _email,
                              hintText: "E-mail",
                              obscureText: false,
                              prefixIcon: Icon(Icons.person)),
                          sizedBoxH(30),
                          MyTextField(
                              controller: _password,
                              hintText: "Password",
                              obscureText: true,
                              prefixIcon: Icon(Icons.lock)),
                          SizedBox(
                            height: 30,
                          ),
                          customButton(
                            context: context,
                            text: "Login",
                            backgroundColor: AppColors.crema.withOpacity(0.8),
                            onPressed: () async {},
                          ),
                          sizedBoxH(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              customTextButton(
                                text: "Şifremi unuttum",
                                onPressed: () {},
                                icon: CupertinoIcons.right_chevron,
                                textColor: AppColors.black,
                              )
                            ],
                          ),
                          sizedBoxH(10),
                          customButton(
                              context: context,
                              text: "Hesap Oluşturun",
                              backgroundColor: AppColors.crema.withOpacity(0.8),
                              onPressed: () {
                                PageNavigator.push(context, MyRegister());
                              },
                              height: 0.04)
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
