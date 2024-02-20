// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, sized_box_for_whitespace, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/path.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/contactbar.dart';
import 'package:my_portfolio/widget/social_contact_card.dart';
import 'package:my_portfolio/widget/url_launcher.dart';
import 'package:social_media_flutter/widgets/icons.dart';

class MyInfo extends StatefulWidget {
  MyInfo({
    super.key,
  });

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
  
    final DesktopDimensions = DesktopResponsive(w, h);

    final openUrl = OpenUrl();
    return Container(
      width: DesktopDimensions.screenWidth / 3.54, //w/3.54
      height: DesktopDimensions.screenWidth / 2.28,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: DesktopDimensions.screenWidth / 13, //130,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(DesktopDimensions.w10)),
                padding: EdgeInsets.all(DesktopDimensions.w30 / 2),
                width: w / 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: DesktopDimensions.w30 * 3.1,
                    ),
                    Bigtext(
                      text: "Md. Ruhul Amin",
                      size: DesktopDimensions.w30,
                    ),
                    Bigtext(
                      text: "Flutter Developer",
                      size: DesktopDimensions.w30 * .6,
                    ),
                    SizedBox(
                      height: DesktopDimensions.w30 / 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(facebook);
                          },
                          child: ContactCard(
                            icon: SocialIconsFlutter.facebook,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.launchEmail();
                          },
                          child: ContactCard(
                            icon: Icons.email,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(github);
                          },
                          child: ContactCard(
                            icon: SocialIconsFlutter.github,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(linkedin);
                          },
                          child: ContactCard(
                            icon: SocialIconsFlutter.linkedin,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(leetcode);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: DesktopDimensions.screenWidth / 32,
                            width: DesktopDimensions.screenWidth / 32,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(DesktopDimensions.w10),
                              color: Color.fromARGB(255, 229, 245, 229),
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset(
                              "assets/images/leetcode.png",
                              height: DesktopDimensions.screenWidth / 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DesktopDimensions.w10,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: DesktopDimensions.w10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            DesktopDimensions.w15,
                          ),
                          color: const Color.fromARGB(255, 239, 239, 239),
                          shape: BoxShape.rectangle,
                        ),
                        child: ContactInfo()),
                  ],
                )),
          ),
          Positioned(
            top: DesktopDimensions.w20,
            left: DesktopDimensions.w50 * 2,
            //    FF9C1A
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    DesktopDimensions.w20,
                  ),
                  color: Colors.orangeAccent,
                  shape: BoxShape.rectangle,
                ),
                child: Image(
                    width: DesktopDimensions.screenWidth / 8,
                    height: DesktopDimensions.screenWidth / 8,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/panjabirbg2.png"))),
          ),
        ],
      ),
    );
    // : Container(
    //     margin: EdgeInsets.only(bottom: w20),
    //     //  color: Colors.red,
    //     // // width: 450, //w/3.54
    //     height: w300,
    //     child: Stack(
    //       alignment: Alignment.topCenter,
    //       clipBehavior: Clip.none,
    //       children: [
    //         Positioned(
    //           top: h50 * 3, //130,
    //           child: Container(
    //               decoration: BoxDecoration(
    //                   color: Colors.white.withOpacity(0.7),
    //                   borderRadius: BorderRadius.circular(w10)),
    //               padding: EdgeInsets.all(w10),
    //               width: w - 20,
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.max,
    //                 children: [
    //                   SizedBox(
    //                     height: h50 * 1.9,
    //                   ),
    //                   Bigtext(
    //                     text: "Md. Ruhul Amin",
    //                     size: font25,
    //                   ),
    //                   Bigtext(
    //                     text: "Flutter Developer",
    //                     size: 15,
    //                   ),
    //                   SizedBox(
    //                     height: w10,
    //                   ),

    //                   //Social Media
    //                   Row(
    //                     //     mainAxisSize: MainAxisSize.max,
    //                     mainAxisAlignment: MainAxisAlignment.end,
    //                     children: [
    //                       InkWell(
    //                         onTap: () {
    //                           //        openUrl.LaunchUrl(facebook);
    //                         },
    //                         child: ContactCard(
    //                           icon: SocialIconsFlutter.facebook,
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: w10,
    //                       ),
    //                       InkWell(
    //                         onTap: () {
    //                           //      openUrl.launchEmail();
    //                         },
    //                         child: ContactCard(
    //                           icon: Icons.email,
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: w10,
    //                       ),
    //                       InkWell(
    //                         onTap: () {
    //                           //      openUrl.LaunchUrl(github);
    //                         },
    //                         child: ContactCard(
    //                           icon: SocialIconsFlutter.github,
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: w10,
    //                       ),
    //                       InkWell(
    //                         onTap: () {
    //                           //      openUrl.LaunchUrl(linkedin);
    //                         },
    //                         child: ContactCard(
    //                           icon: SocialIconsFlutter.linkedin,
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: w10,
    //                       ),
    //                       InkWell(
    //                         onTap: () {
    //                           //            openUrl.LaunchUrl(leetcode);
    //                         },
    //                         child: Container(
    //                           alignment: Alignment.center,
    //                           height: w10 * 3.5,
    //                           width: w10 * 3.5,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(8),
    //                             color: Color.fromARGB(255, 229, 245, 229),
    //                             shape: BoxShape.rectangle,
    //                           ),
    //                           child: Image.asset(
    //                             "assets/images/leetcode.png",
    //                             height: w10 * 2.1,
    //                             color: Colors.blue,
    //                           ),
    //                         ),
    //                       ),
    //                       Expanded(
    //                         child: SizedBox(
    //                           width: h20,
    //                         ),
    //                       ),
    //                       InkWell(
    //                         onTap: () {
    //                           //       openUrl.LaunchUrl(resume);
    //                         },
    //                         child: Align(
    //                           //   alignment: Alignment.topRight,
    //                           child: Container(
    //                             //  alignment: Alignment.topRight,
    //                             padding: EdgeInsets.symmetric(
    //                                 horizontal: w10, vertical: h10 / 2),
    //                             decoration: BoxDecoration(
    //                                 color: buttonColor,
    //                                 borderRadius:
    //                                     BorderRadius.circular(h10)),
    //                             child: Row(
    //                               mainAxisAlignment:
    //                                   MainAxisAlignment.center,
    //                               children: [
    //                                 Icon(
    //                                   Icons.download,
    //                                   color: Colors.white,
    //                                   size: w18,
    //                                 ),
    //                                 Bigtext(
    //                                   text: "See CV",
    //                                   size: MobileDimensions.font15,
    //                                   color: Colors.white,
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               )),
    //         ),
    //         Positioned(
    //           top: h10,
    //           left: (w - w100 * 1.3) / 2, // 130,
    //           //    FF9C1A
    //           child: Container(
    //               alignment: Alignment.center,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(10),
    //                 color: Colors.orangeAccent,
    //                 shape: BoxShape.rectangle,
    //               ),
    //               child: Image(
    //                   width: w100 * 1.3,
    //                   filterQuality: FilterQuality.high,
    //                   height: w100 * 1.3,
    //                   fit: BoxFit.cover,
    //                   image: AssetImage("assets/images/panjabirbg2.png"))),
    //         ),
    //         Positioned(
    //           bottom: -w30 * 1.2,
    //           left: 7,
    //           child: Row(mainAxisSize: MainAxisSize.max, children: [
    //             Container(
    //               width: w - 30,
    //               alignment: Alignment.center,
    //               padding:
    //                   EdgeInsets.symmetric(horizontal: w10, vertical: h10),
    //               decoration: BoxDecoration(
    //                   borderRadius:
    //                       BorderRadius.circular(MobileDimensions.h10),
    //                   border: Border.all(color: Colors.grey)),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   InkWell(
    //                     onTap: () {
    //                       setState(() {
    //                         Get.find<MyController>()
    //                             .updateSelectedButtonIndex(0);
    //                         //   indexInstance.selectedIndex = 0;
    //                         selectedIndex = 0;
    //                       });
    //                     },
    //                     child: NavigationButton(
    //                       index: 0,
    //                       selectedIndex: selectedIndex,
    //                       icon: Icons.home_outlined,
    //                       text: "Home",
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: MobileDimensions.w10,
    //                   ),
    //                   InkWell(
    //                     onTap: () {
    //                       setState(() {
    //                         Get.find<MyController>()
    //                             .updateSelectedButtonIndex(1);
    //                         //  indexInstance.selectedIndex = 1;
    //                         selectedIndex = 1;
    //                       });
    //                     },
    //                     child: NavigationButton(
    //                       index: 1,
    //                       selectedIndex: selectedIndex,
    //                       icon: Icons.document_scanner_sharp,
    //                       text: "Resume",
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: MobileDimensions.w10,
    //                   ),
    //                   InkWell(
    //                     onTap: () {
    //                       setState(() {
    //                         Get.find<MyController>()
    //                             .updateSelectedButtonIndex(2);
    //                         //  indexInstance.selectedIndex = 2;
    //                         selectedIndex = 2;
    //                       });
    //                     },
    //                     child: NavigationButton(
    //                       index: 2,
    //                       selectedIndex: selectedIndex,
    //                       icon: Icons.work_history_outlined,
    //                       text: "Work",
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: MobileDimensions.w10,
    //                   ),
    //                   InkWell(
    //                     onTap: () {
    //                       setState(() {
    //                         Get.find<MyController>()
    //                             .updateSelectedButtonIndex(3);
    //                         //  indexInstance.selectedIndex = 3;
    //                         selectedIndex = 3;
    //                       });
    //                     },
    //                     child: NavigationButton(
    //                       index: 3,
    //                       selectedIndex: selectedIndex,
    //                       icon: Icons.contacts_outlined,
    //                       text: "Contact",
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ]),
    //         )
    //       ],
    //     ));
  }
}

class MyInfoForDeskTop extends StatelessWidget {
  const MyInfoForDeskTop({
    super.key,
    required this.w,
    required this.w30,
    required this.openUrl,
  });

  final double w;
  final double w30;
  final OpenUrl openUrl;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);

    return Container(
      width: DesktopDimensions.screenWidth / 3.54, //w/3.54
      height: DesktopDimensions.screenWidth / 2.28,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: DesktopDimensions.screenWidth / 13, //130,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(DesktopDimensions.w10)),
                padding: EdgeInsets.all(DesktopDimensions.w30 / 2),
                width: w / 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: DesktopDimensions.w30 * 3.1,
                    ),
                    Bigtext(
                      text: "Md. Ruhul Amin",
                      size: DesktopDimensions.w30,
                    ),
                    Bigtext(
                      text: "Flutter Developer",
                      size: DesktopDimensions.w30 * .6,
                    ),
                    SizedBox(
                      height: DesktopDimensions.w30 / 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(facebook);
                          },
                          child: ContactCard(
                            icon: SocialIconsFlutter.facebook,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.launchEmail();
                          },
                          child: ContactCard(
                            icon: Icons.email,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(github);
                          },
                          child: ContactCard(
                            icon: SocialIconsFlutter.github,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(linkedin);
                          },
                          child: ContactCard(
                            icon: SocialIconsFlutter.linkedin,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(leetcode);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: DesktopDimensions.screenWidth / 32,
                            width: DesktopDimensions.screenWidth / 32,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(DesktopDimensions.w10),
                              color: Color.fromARGB(255, 229, 245, 229),
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset(
                              "assets/images/leetcode.png",
                              height: DesktopDimensions.screenWidth / 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DesktopDimensions.w10,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: DesktopDimensions.w10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            DesktopDimensions.w15,
                          ),
                          color: const Color.fromARGB(255, 239, 239, 239),
                          shape: BoxShape.rectangle,
                        ),
                        child: ContactInfo()),
                  ],
                )),
          ),
          Positioned(
            top: DesktopDimensions.w20,
            left: DesktopDimensions.w50 * 2,
            //    FF9C1A
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    DesktopDimensions.w20,
                  ),
                  color: Colors.orangeAccent,
                  shape: BoxShape.rectangle,
                ),
                child: Image(
                    width: DesktopDimensions.screenWidth / 8,
                    height: DesktopDimensions.screenWidth / 8,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/panjabirbg2.png"))),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

   final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);
    double w10 = DesktopDimensions.w10;
    double w18 = DesktopDimensions.w18;
    double h10 = DesktopDimensions.w10;
    final openurl = OpenUrl();
    return w > mobilescreen
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactBar(
                title: "Phone",
                subtitle: "01568151821",
                icon: Icons.phone_android_rounded,
              ),
              ContactBar(
                title: "Email",
                subtitle: "md.ruhulamin1863@gmail.com",
                icon: Icons.email_outlined,
              ),
              ContactBar(
                title: "Location",
                subtitle: "Chattagram",
                icon: Icons.location_on_outlined,
              ),
              SizedBox(
                height: h10,
              ),
              InkWell(
                onTap: () {
                  openurl.LaunchUrl(resume);
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: DesktopDimensions.w10,
                        vertical: DesktopDimensions.w10 / 2),
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius:
                            BorderRadius.circular(DesktopDimensions.w10)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color: Colors.white,
                          size: w18,
                        ),
                        Bigtext(
                          text: "Download Resume",
                          size: DesktopDimensions.font13,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ContactBar(
                title: "Phone",
                subtitle: "01568151821",
                icon: Icons.phone_android_rounded,
              ),
              ContactBar(
                title: "Location",
                subtitle: "Chattagram",
                icon: Icons.location_on_outlined,
              ),
              SizedBox(
                height: w10 / 2,
              ),
              InkWell(
                onTap: () {
                  openurl.LaunchUrl(resume);
                },
                child: Align(
                  //   alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color: Colors.white,
                          size: w18,
                        ),
                        Bigtext(
                          text: "See CV",
                          size: MobileDimensions.font13,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
