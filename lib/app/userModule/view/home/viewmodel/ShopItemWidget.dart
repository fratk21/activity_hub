import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/buttonmodel.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';

class ShopItemWidget extends StatelessWidget {
  final String shopName;
  final String description;
  final String discount;
  final String addressUrl;
  final String imageUrl;
  final IconData icon;

  ShopItemWidget({
    required this.shopName,
    required this.description,
    required this.discount,
    required this.addressUrl,
    required this.imageUrl,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: AppColors.flashwhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Yer Adı : $shopName",
                        style: TextStyle(
                            color: AppColors.gblue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      sizedBoxW(10),
                      Text(
                        "İndirim : $discount",
                        style: TextStyle(
                            color: AppColors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(description, style: TextStyle(color: AppColors.gblue)),
                  sizedBoxH(10),
                  customButton(
                      context: context,
                      text: "Adres",
                      height: 0.04,
                      onPressed: () {},
                      borderRadius: 10),
                ],
              ),
            )
          ],
        ));
  }
}
