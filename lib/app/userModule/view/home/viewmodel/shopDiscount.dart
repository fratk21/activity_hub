import 'package:accordion/accordion.dart';
import 'package:accordion/accordion_section.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';
import 'package:toplulugum/app/global/utils/imageSlider.dart';
import 'package:toplulugum/app/global/utils/style.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';
import 'package:toplulugum/app/userModule/view/home/services/function.dart';
import 'package:toplulugum/app/userModule/view/home/viewmodel/ShopItemWidget.dart';

Widget communityView(String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Card(
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(image),
        ),
      ),
    ),
  );
}

Widget homeCategoryText(String text) {
  return CustomText(
    alignment: MainAxisAlignment.start,
    text: text,
    style: GoogleFonts.orbitron(
      textStyle: TextStyle(
        fontSize: 18,
        color: AppColors.gblue,
        letterSpacing: 8,
      ),
    ),
  );
}

Widget ShopItemview() {
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: shopList.length,
    itemBuilder: (context, index) {
      return ShopItemWidget(
        shopName: shopList[index].name,
        description: shopList[index].description,
        discount: shopList[index].discount,
        imageUrl: shopList[index].imageUrl,
        icon: shopList[index].icon,
        addressUrl: "",
      );
    },
  );
}

Widget Noticesview() {
  return SingleChildScrollView(
    child: Accordion(
      disableScrolling: true,
      headerBorderColor: Colors.blueGrey,
      headerBorderColorOpened: Colors.transparent,
      headerBackgroundColorOpened: AppColors.blue,
      contentBackgroundColor: Colors.white,
      contentBorderColor: AppColors.blue,
      contentBorderWidth: 3,
      contentHorizontalPadding: 20,
      scaleWhenAnimating: true,
      openAndCloseAnimation: true,
      headerPadding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
      sectionClosingHapticFeedback: SectionHapticFeedback.light,
      children: [
        AccordionSection(
          isOpen: true,
          contentVerticalPadding: 20,
          leftIcon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          header: Text('Bilişim Topluluğu', style: headerStyle),
          content: Text("loremIpsum", style: contentStyle),
        ),
        AccordionSection(
          isOpen: true,
          contentVerticalPadding: 20,
          leftIcon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          header: Text('Sağlık için El ele', style: headerStyle),
          content: Text("loremIpsum", style: contentStyle),
        ),
      ],
    ),
  );
}

Widget homebody() {
  return SingleChildScrollView(
    physics: ClampingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
      child: Column(
        children: [
          homeCategoryText("Haberler"),
          sizedBoxH(5),
          imageSlider(images),
          sizedBoxH(10),
          homeCategoryText("Duyurular"),
          sizedBoxH(5),
          Noticesview(),
          sizedBoxH(5),
          homeCategoryText("Avantajlarım"),
          sizedBoxH(5),
          ShopItemview()
        ],
      ),
    ),
  );
}
