// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/path.dart';

import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/controller/get_controller.dart';
import 'package:my_portfolio/mobile/homepage/home_screen.dart';
import 'package:my_portfolio/mobile/homepage/mobile_main_page2.dart';
import 'package:my_portfolio/mobile/index_controller.dart';
import 'package:my_portfolio/mobile/mobile_main_page.dart';
import 'package:my_portfolio/screen/contact.dart';
import 'package:my_portfolio/screen/desktop/homefordesktop.dart';
import 'package:my_portfolio/screen/home.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/screen/resume.dart';
import 'package:my_portfolio/screen/work.dart';
import 'package:my_portfolio/screen/myinfo.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/navigationbutton.dart';
import 'package:my_portfolio/widget/social_contact_card.dart';
import 'package:my_portfolio/widget/url_launcher.dart';
import 'package:social_media_flutter/widgets/icons.dart';

class HomeResponsive extends StatelessWidget {
  const HomeResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileHomeTest(),
      tablet: DesktopHomePage(),
      desktop: DesktopHomePage(),
    );
  }
}

class MobileHomeTest extends StatefulWidget {
  const MobileHomeTest({super.key});

  @override
  State<MobileHomeTest> createState() => _MobileHomeTestState();
}

class _MobileHomeTestState extends State<MobileHomeTest> {
  final IndexController indexController = Get.put(IndexController());

  List<Widget> pages = [
    const HomeScreenForMobile(),
    const Resume(),
    const Work(),
    const Contact()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.transparent,
      body: Stack(children: [
        Positioned(child: FlyingBubbles()),
        Positioned(
            child: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          indexController.rearrangeList(0);
                          indexController.selectedIndex.value = 0;
                        },
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  </Ruhul',
                                  style: TextStyle(
                                      fontSize: MobileDimensions.w17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontFamily: "Lobster ")),
                              TextSpan(
                                  text: ' Amin>',
                                  style: TextStyle(
                                      fontSize: MobileDimensions.w17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontFamily: "Lobster")),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: MobileDimensions.w20 * 2,
                          decoration: BoxDecoration(
                              color: const Color(0x00ebf2fa),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.dark_mode_outlined,
                                  size: MobileDimensions.w20)))
                    ],
                  ),
                ),
                MyInfoPage(),
                SizedBox(
                  height: MobileDimensions.w20,
                ),
                pages[indexController.numbers[0]],
                SizedBox(
                  height: MobileDimensions.h10,
                ),
                pages[indexController.numbers[1]],
                SizedBox(
                  height: MobileDimensions.h10,
                ),
                pages[indexController.numbers[2]],
                SizedBox(
                  height: MobileDimensions.h10,
                ),
                pages[indexController.numbers[3]],
                SizedBox(
                  height: MobileDimensions.h10,
                ),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}
