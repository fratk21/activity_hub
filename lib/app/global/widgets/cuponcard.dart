import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/colors.dart';

class cuponcardModel extends StatelessWidget {
  final String money,
      location,
      commintiyname,
      eventheader,
      eventdescription,
      date;
  const cuponcardModel(
      {Key? key,
      required this.money,
      required this.location,
      required this.commintiyname,
      required this.eventheader,
      required this.eventdescription,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CouponCard(
      height: 200,
      backgroundColor: AppColors.flashwhite,
      clockwise: true,
      curvePosition: 135,
      curveRadius: 30,
      curveAxis: Axis.vertical,
      borderRadius: 10,
      firstChild: Container(
        decoration: const BoxDecoration(
          color: AppColors.dpurple,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      money,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'TL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.white54, height: 0),
            Expanded(
              child: Center(
                child: Text(
                  location,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      secondChild: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              commintiyname,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 4),
            Text(
              eventheader,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              eventdescription,
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              date,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
