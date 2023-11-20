import 'package:accordion/accordion.dart';
import 'package:accordion/accordion_section.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/communityModule/view/communityEvent/comminityEvent.dart';
import 'package:toplulugum/app/communityModule/view/communityNotif/communityNotif.dart';
import 'package:toplulugum/app/communityModule/view/communitymembers/comminityMembers.dart';
import 'package:toplulugum/app/global/utils/copyfunction.dart';
import 'package:toplulugum/app/global/utils/imageSlider.dart';
import 'package:toplulugum/app/global/utils/style.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/utils/pageroutes.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';

Widget Noticesview(BuildContext context) {
  return SingleChildScrollView(
    child: Accordion(
      disableScrolling: true,
      headerBorderColor: Colors.blueGrey,
      headerBorderColorOpened: Colors.transparent,
      headerBackgroundColorOpened: AppColors.dpurple.withOpacity(0.5),
      contentBackgroundColor: Colors.white,
      contentBorderColor: AppColors.dpurple.withOpacity(0.5),
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
              Icons.event,
              color: Colors.white,
            ),
            header: Text('Üye Ayarları', style: headerStyle),
            content: Column(
              children: [
                ListTile(
                  onTap: () {
                    copyToClipboard("textToCopy");
                  },
                  title: Text("Üye Ekleme Kodu", style: twoheaderStyle),
                  trailing: Icon(Icons.copy),
                  subtitle: Text("21213123123123123", style: contentStyle),
                ),
                ListTile(
                  onTap: () {
                    PageNavigator.push(context, ComminityMembers());
                  },
                  title: Text("Üye Ayarları", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle:
                      Text("Topluluktan Üyeyi Çıkar", style: contentStyle),
                )
              ],
            )),
        AccordionSection(
            isOpen: true,
            contentVerticalPadding: 20,
            leftIcon: Icon(
              Icons.event,
              color: Colors.white,
            ),
            header: Text('Etkinlik Ayarları', style: headerStyle),
            content: Column(
              children: [
                ListTile(
                  onTap: () {
                    PageNavigator.push(context, CommunityEvent());
                  },
                  title: Text("Etkinliklerim", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle: Text("Etkinlik düzenle & Sil & Listele",
                      style: contentStyle),
                ),
              ],
            )),
        AccordionSection(
            isOpen: true,
            contentVerticalPadding: 20,
            leftIcon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            header: Text('Duyuru Ayarları', style: headerStyle),
            content: Column(
              children: [
                ListTile(
                  onTap: () {
                    PageNavigator.push(context, CommNotifScreen());
                  },
                  title: Text("Duyurularım", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle: Text("Duyuru düzenle & Sil & Listele",
                      style: contentStyle),
                ),
              ],
            )),
        AccordionSection(
            isOpen: true,
            contentVerticalPadding: 20,
            leftIcon: Icon(
              Icons.star_purple500_sharp,
              color: Colors.white,
            ),
            header: Text('Avantajlar Ayarları', style: headerStyle),
            content: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("Avantajlarım", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle: Text("Avantajları düzenle & Sil & Listele",
                      style: contentStyle),
                ),
              ],
            )),
      ],
    ),
  );
}

Widget homebody(BuildContext context) {
  return SingleChildScrollView(
    physics: ClampingScrollPhysics(),
    child: Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
      child: Column(
        children: [
          sizedBoxH(5),
          imageSlider(images),
          sizedBoxH(10),
          sizedBoxH(5),
          Noticesview(context),
          sizedBoxH(5),
          sizedBoxH(5),
        ],
      ),
    ),
  );
}
