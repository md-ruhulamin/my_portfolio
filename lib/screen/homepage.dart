// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/path.dart';

import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/controller/get_controller.dart';
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
      mobile: MobileHome(),
      tablet: HomePage(),
      desktop: HomePage(),
    );
  }
}

class MobileHomeRoot extends StatefulWidget {
  const MobileHomeRoot({super.key});

  @override
  State<MobileHomeRoot> createState() => _MobileHomeRootState();
}

class _MobileHomeRootState extends State<MobileHomeRoot> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const Home(),
    const Resume(),
    const Work(),
    const Contact()
  ];
  List<int> numbers = [0, 1, 2, 3];
  void rearrangeList(int selectedNumber) {
    numbers.remove(selectedNumber);
    numbers.insert(0, selectedNumber);
    List<int> sublistCopy = List<int>.from(numbers.sublist(1))..sort();
    for (int i = 1; i < numbers.length; i++) {
      numbers[i] = sublistCopy[i - 1];
    }
  }

  @override
  Widget build(BuildContext context) {
    final openUrl = OpenUrl();

    return Container(
  
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    rearrangeList(0);
                    selectedIndex = 0;
                  });
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
                      color: const Color(0xEBF2FA),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.dark_mode_outlined,
                          size: MobileDimensions.w20)))
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: MobileDimensions.w20),
              //  color: Colors.red,
              // // width: 450, //w/3.54
              height: MobileDimensions.w100 * 3,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: MobileDimensions.h100 * 0.8, //130,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius:
                                BorderRadius.circular(MobileDimensions.w10)),
                        padding: EdgeInsets.all(MobileDimensions.w10),
                        width: MobileDimensions.screenWidth - 20,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: MobileDimensions.h50 * 1.9,
                            ),
                            Bigtext(
                              text: "Md. Ruhul Amin",
                              size: MobileDimensions.w25,
                            ),
                            Bigtext(
                              text: "Flutter Developer",
                              size: MobileDimensions.w15,
                            ),
                            SizedBox(
                              height: MobileDimensions.w10,
                            ),

                            //Social Media
                            Row(
                              //     mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    openUrl.LaunchUrl(facebook);
                                  },
                                  child: ContactCard(
                                    url: facebook,
                                    icon: SocialIconsFlutter.facebook,
                                  ),
                                ),
                                SizedBox(
                                  width: MobileDimensions.w10,
                                ),
                                InkWell(
                                  onTap: () {
                                    
                                    openUrl.launchEmail();
                                  },
                                  child: ContactCard(
                                    url: email,
                                    icon: Icons.email,
                                  ),
                                ),
                                SizedBox(
                                  width: MobileDimensions.w10,
                                ),
                                InkWell(
                                  onTap: () {
                                    openUrl.LaunchUrl(github);
                                  },
                                  child: ContactCard(
                                    url: github,
                                    icon: SocialIconsFlutter.github,
                                  ),
                                ),
                                SizedBox(
                                  width: MobileDimensions.w10,
                                ),
                                InkWell(
                                  onTap: () {
                                    openUrl.LaunchUrl(linkedin);
                                  },
                                  child: ContactCard(
                                    url: linkedin,
                                    icon: SocialIconsFlutter.linkedin,
                                  ),
                                ),
                                SizedBox(
                                  width: MobileDimensions.w10,
                                ),
                                InkWell(
                                  onTap: () {
                                    openUrl.LaunchUrl(leetcode);
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: MobileDimensions.w10 * 3.5,
                                    width: MobileDimensions.w10 * 3.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color.fromARGB(255, 229, 245, 229),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Image.asset(
                                      "assets/images/leetcode.png",
                                      height: MobileDimensions.w10 * 2.1,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: MobileDimensions.h20,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    openUrl.LaunchUrl(resume);
                                  },
                                  child: Align(
                                    //   alignment: Alignment.topRight,
                                    child: Container(
                                      //  alignment: Alignment.topRight,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MobileDimensions.w10,
                                          vertical: MobileDimensions.h10),
                                      decoration: BoxDecoration(
                                          color: buttonColor,
                                          borderRadius: BorderRadius.circular(
                                              MobileDimensions.h10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.download,
                                            color: Colors.white,
                                            size: MobileDimensions.w18,
                                          ),
                                          Bigtext(
                                            text: "See CV",
                                            size: MobileDimensions.w13,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    top: MobileDimensions.h10,
                    left: (MobileDimensions.screenWidth -
                            MobileDimensions.w100 * 1.3) /
                        2, // 130,
                    //    FF9C1A
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MobileDimensions.w10),
                          color: Colors.orangeAccent,
                          shape: BoxShape.rectangle,
                        ),
                        child: Image(
                            width: MobileDimensions.w100 * 1.3,
                            filterQuality: FilterQuality.high,
                            height: MobileDimensions.w100 * 1.3,
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/panjabirbg2.png"))),
                  ),
                  Positioned(
                    bottom:-MobileDimensions.w30*1.5 ,
                    left: 7,
                    child: Row(mainAxisSize: MainAxisSize.max, children: [
                      Container(
                        width: MobileDimensions.screenWidth - 30,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: MobileDimensions.w10,
                            vertical: MobileDimensions.h10),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(MobileDimensions.w10),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  rearrangeList(0);
                                  selectedIndex = 0;
                                });
                              },
                              child: NavigationButton(
                                index: 0,
                                selectedIndex: selectedIndex,
                                icon: Icons.home_outlined,
                                text: "Home",
                              ),
                            ),
                            SizedBox(
                              width: MobileDimensions.w10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  rearrangeList(1);
                                  selectedIndex = 1;
                                });
                              },
                              child: NavigationButton(
                                index: 1,
                                selectedIndex: selectedIndex,
                                icon: Icons.document_scanner_sharp,
                                text: "Resume",
                              ),
                            ),
                            SizedBox(
                              width: MobileDimensions.w10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  rearrangeList(2);
                                  selectedIndex = 2;
                                });
                              },
                              child: NavigationButton(
                                index: 2,
                                selectedIndex: selectedIndex,
                                icon: Icons.work_history_outlined,
                                text: "Work",
                              ),
                            ),
                            SizedBox(
                              width: MobileDimensions.w10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  rearrangeList(3);
                                  selectedIndex = 3;
                                });
                              },
                              child: NavigationButton(
                                index: 3,
                                selectedIndex: selectedIndex,
                                icon: Icons.contacts_outlined,
                                text: "Contact",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
              )),
          SizedBox(
            height: MobileDimensions.w30,
          ),
          pages[numbers[0]],
          SizedBox(
            height: MobileDimensions.h10,
          ),
          pages[numbers[1]],
          SizedBox(
            height: MobileDimensions.h10,
          ),
          pages[numbers[2]],
          SizedBox(
            height: MobileDimensions.h10,
          ),
          pages[numbers[3]],
          SizedBox(
            height: MobileDimensions.h10,
          ),
        ],
      ),
    );
  }
}

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int selectedIndex = 0;
  List<int> numbers = [0, 1, 2, 3];

  List<Widget> pages = [
    const Home(),
    const Resume(),
    const Work(),
    const Contact()
  ];

  @override
  Widget build(BuildContext context) {
    print(selectedIndex);
    return Scaffold(
    
      body: SafeArea(
        child: Container(
        
          padding: EdgeInsets.only(
              left: MobileDimensions.w10, right: MobileDimensions.w10, top: MobileDimensions.h20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                MobileHomeRoot(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
