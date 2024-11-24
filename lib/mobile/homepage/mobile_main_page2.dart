import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/path.dart';
import 'package:my_portfolio/mobile/homepage/home_screen.dart';
import 'package:my_portfolio/mobile/index_controller.dart';
import 'package:my_portfolio/mobile/utils/color.dart';
import 'package:my_portfolio/screen/contact.dart';
import 'package:my_portfolio/screen/desktop/homefordesktop.dart';
import 'package:my_portfolio/screen/resume.dart';
import 'package:my_portfolio/screen/work.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/navigationbutton.dart';
import 'package:my_portfolio/widget/social_contact_card.dart';
import 'package:my_portfolio/widget/url_launcher.dart';
import 'package:social_media_flutter/widgets/icons.dart';

class MyInfoPage extends StatefulWidget {
  const MyInfoPage({super.key});

  @override
  State<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  final IndexController indexController = Get.put(IndexController());
  @override
  Widget build(BuildContext context) {
    final openUrl = OpenUrl();
    return Container(
        //    margin: EdgeInsets.only(bottom: MobileDimensions.w20),
        color: Colors.transparent,
        // // width: 450, //w/3.54
        height: MobileDimensions.w100 * 3.7,
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            //     Positioned(child: FlyingBubbles()),
            Positioned(
              top: MobileDimensions.h100 * 0.9, //130,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius:
                          BorderRadius.circular(MobileDimensions.w10)),
                  padding: EdgeInsets.all(MobileDimensions.w10),
                  width: MobileDimensions.screenWidth - 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: MobileDimensions.h50 * 2.2,
                      ),
                      Bigtext(
                        text: "Md. Ruhul Amin",
                        size: MobileDimensions.w25,
                        color: Colors.black,
                      ),
                      Bigtext(
                        text: "Flutter Developer",
                        size: MobileDimensions.w17,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MobileDimensions.w5,
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
                            child: const ContactCard(
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
                            child: const ContactCard(
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
                            child: const ContactCard(
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
                            child: const ContactCard(
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
                                color: const Color.fromARGB(255, 229, 245, 229),
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
                                    color: lightbgColor,
                                    borderRadius: BorderRadius.circular(
                                        MobileDimensions.h10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(
                        height: MobileDimensions.h20,
                      ),
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
                                  indexController.rearrangeList(0);
                                  indexController.selectedIndex.value = 0;
                                });
                              },
                              child: NavigationButton(
                                index: 0,
                                selectedIndex:
                                    indexController.selectedIndex.value,
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
                                  indexController.rearrangeList(1);
                                  indexController.selectedIndex.value = 1;
                                });
                              },
                              child: NavigationButton(
                                index: 1,
                                selectedIndex:
                                    indexController.selectedIndex.value,
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
                                  indexController.rearrangeList(2);
                                  indexController.selectedIndex.value = 2;
                                });
                              },
                              child: NavigationButton(
                                index: 2,
                                selectedIndex:
                                    indexController.selectedIndex.value,
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
                                  indexController.rearrangeList(3);
                                  indexController.selectedIndex.value = 3;
                                });
                              },
                              child: NavigationButton(
                                index: 3,
                                selectedIndex:
                                    indexController.selectedIndex.value,
                                icon: Icons.contacts_outlined,
                                text: "Contact",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Positioned(
                // top: MobileDimensions.h10 * 1,
                left: (MobileDimensions.screenWidth -
                        MobileDimensions.w100 * 1.3) /
                    2.2, // 130,
                //    FF9C1A
                child: AnimatedImageContainer()

                //  Container(
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(MobileDimensions.w10),
                //       color: Colors.orangeAccent,
                //       shape: BoxShape.rectangle,
                //     ),
                //     child: Image(
                //         width: MobileDimensions.w100 * 1.5,
                //         filterQuality: FilterQuality.high,
                //         height: MobileDimensions.w100 * 1.5,
                //         fit: BoxFit.cover,
                //         image: const AssetImage("assets/images/ruhul_nbg.png"))),
                ),
          ],
        ));
  }
}

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key}) : super(key: key);

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;

        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: 150,
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/ruhul_nbg.png',
                  height: 148,
                  width: 148,
                  //  color: Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
