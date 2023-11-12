import 'package:flutter/material.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';

class dividerText extends StatelessWidget {
  final String labelText;

  const dividerText({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(
              color: Colors.black,
              height: 36,
            ),
          ),
        ),
        CustomText(text: labelText),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Colors.black,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }
}
