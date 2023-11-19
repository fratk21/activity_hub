import 'package:accordion/accordion.dart';
import 'package:accordion/accordion_section.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/app/global/utils/imageSlider.dart';
import 'package:toplulugum/app/global/utils/style.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';

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
              Icons.event,
              color: Colors.white,
            ),
            header: Text('Üye Ayarları', style: headerStyle),
            content: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("Üye Ekleme Kodu", style: twoheaderStyle),
                  trailing: Icon(Icons.copy),
                  subtitle: Text("21213123123123123", style: contentStyle),
                ),
                ListTile(
                  onTap: () {},
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
                  onTap: () {},
                  title: Text("Etkinliklerim", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle: Text("Etkinlik düzenle & Sil & Listele",
                      style: contentStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Etkinlik Oluştur", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                )
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
                  onTap: () {},
                  title: Text("Duyurularım", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle: Text("Duyuru düzenle & Sil & Listele",
                      style: contentStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Duyuru Oluştur", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                )
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
                ListTile(
                  onTap: () {},
                  title: Text("Avantaj Oluştur", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                )
              ],
            )),
        AccordionSection(
            isOpen: true,
            contentVerticalPadding: 20,
            leftIcon: Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            header: Text(' Proje Ayarları', style: headerStyle),
            content: Column(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("Projelerim", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                  subtitle: Text("Proje düzenle & Sil & Listele",
                      style: contentStyle),
                ),
                ListTile(
                  onTap: () {},
                  title: Text(" Proje Oluştur", style: twoheaderStyle),
                  trailing: Icon(CupertinoIcons.right_chevron),
                )
              ],
            )),
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
          sizedBoxH(5),
          imageSlider(images),
          sizedBoxH(10),
          sizedBoxH(5),
          Noticesview(),
          sizedBoxH(5),
          sizedBoxH(5),
        ],
      ),
    ),
  );
}
