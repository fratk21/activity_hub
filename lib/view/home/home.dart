import 'dart:async';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';
import 'package:toplulugum/view/home/viewmodel/shopDiscount.dart';
import 'package:toplulugum/view/home/services/function.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  static const headerStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const contentStyleHeader = TextStyle(
    color: Color(0xff999999),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const contentStyle = TextStyle(
    color: Color(0xff999999),
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Activity Hub",
          style: GoogleFonts.orbitron(
            textStyle: TextStyle(
              fontSize: 30,
              color: AppColors.black,
              letterSpacing: 8,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
          child: Column(
            children: [
              CustomText(
                alignment: MainAxisAlignment.start,
                text: "Haberler",
                style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: AppColors.gblue,
                    letterSpacing: 8,
                  ),
                ),
              ),
              sizedBoxH(5),
              SizedBox(
                height: 164,
                child: ScrollPageView(
                  controller: ScrollPageController(),
                  children: images.map((image) => imageView(image)).toList(),
                ),
              ),
              sizedBoxH(10),
              CustomText(
                alignment: MainAxisAlignment.start,
                text: "Duyurular",
                style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: AppColors.gblue,
                    letterSpacing: 8,
                  ),
                ),
              ),
              sizedBoxH(5),
              SingleChildScrollView(
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
                      content: Text(loremIpsum, style: contentStyle),
                    ),
                    AccordionSection(
                      isOpen: true,
                      contentVerticalPadding: 20,
                      leftIcon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      header: Text('Sağlık için El ele', style: headerStyle),
                      content: Text(loremIpsum, style: contentStyle),
                    ),
                  ],
                ),
              ),
              sizedBoxH(5),
              CustomText(
                alignment: MainAxisAlignment.start,
                text: "Avantajlarım",
                style: GoogleFonts.orbitron(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: AppColors.gblue,
                    letterSpacing: 8,
                  ),
                ),
              ),
              sizedBoxH(5),
              ListView.builder(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
