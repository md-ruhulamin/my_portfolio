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

    final DesktopDimensions = DesktopResponsive(w, h);
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;

        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: DesktopDimensions.w100 * 2,
            width: DesktopDimensions.w100 * 2,
            padding: EdgeInsets.symmetric(horizontal:DesktopDimensions.w5,vertical: DesktopDimensions.w5 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DesktopDimensions.w10),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
           
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
               color: cardColor,
                borderRadius: BorderRadius.circular(DesktopDimensions.w10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(DesktopDimensions.w10),
              
                child: Image.asset(
                  
                  'assets/images/ruhul_nbg.png',
                  height: DesktopDimensions.w100 * 2,
                  width: DesktopDimensions.w100 * 2,
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

class MyInfo extends StatefulWidget {
  MyInfo({
    super.key,
  });

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  bool _isHovered = false;
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
                    color: bgColor,
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
                        ContactCard(
                          url: facebook,
                          icon: SocialIconsFlutter.facebook,
                        ),
                        ContactCard(
                          url: email,
                          icon: Icons.email,
                        ),
                        ContactCard(
                          url: github,
                          icon: SocialIconsFlutter.github,
                        ),
                        ContactCard(
                          url: linkedin,
                          icon: SocialIconsFlutter.linkedin,
                        ),
                        MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              _isHovered = true;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              _isHovered = false;
                            });
                          },
                          child: InkWell(
                            onTap: () {
                              openUrl.LaunchUrl(leetcode);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: DesktopDimensions.screenWidth / 32,
                              width: DesktopDimensions.screenWidth / 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    DesktopDimensions.w10),
                                boxShadow: _isHovered
                                    ? [
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5,
                                            offset: (Offset(5, -5))),
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 5,
                                            offset: (Offset(-5, 5))),
                                      ]
                                    : [
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 1,
                                            offset: (Offset(1, -1))),
                                        BoxShadow(
                                            color: Colors.white,
                                            blurRadius: 1,
                                            offset: (Offset(-1, 1))),
                                      ],
                                color: _isHovered
                                    ? const Color.fromARGB(255, 25, 23, 15)
                                    : Color.fromARGB(255, 229, 245, 229),
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset(
                                "assets/images/leetcode.png",
                                height: DesktopDimensions.screenWidth / 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DesktopDimensions.w30,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: DesktopDimensions.w20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            DesktopDimensions.w15,
                          ),
                          color: cardColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink,
                              offset: const Offset(-2, 0),
                              blurRadius: 20,
                            ),
                            BoxShadow(
                              color: Colors.blue,
                              offset: const Offset(2, 0),
                              blurRadius: 20,
                            ),
                          ],
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
            child: AnimatedImageContainer(),
          ),
          // Positioned(
          //   top: DesktopDimensions.w20,
          //   left: DesktopDimensions.w50 * 2,
          //   //    FF9C1A
          //   child: Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(
          //           DesktopDimensions.w20,
          //         ),
          //         color: Colors.orangeAccent,
          //         shape: BoxShape.rectangle,
          //       ),
          //       child: Image(
          //           width: DesktopDimensions.screenWidth / 8,
          //           height: DesktopDimensions.screenWidth / 8,
          //           fit: BoxFit.cover,
          //           image: AssetImage("assets/images/panjabirbg2.png"))),
          // ),
        ],
      ),
    );
   
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
      color: staticColor,
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
                            url: facebook,
                            icon: SocialIconsFlutter.facebook,
                          ),
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
                        InkWell(
                          onTap: () {
                            openUrl.LaunchUrl(github);
                          },
                          child: ContactCard(
                            url: github,
                            icon: SocialIconsFlutter.github,
                          ),
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
                              color: staticColor,
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
                          color: staticColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.pink,
                                offset: const Offset(-2, 0),
                                blurRadius: 20),
                            BoxShadow(
                              color: Colors.blue,
                              offset: const Offset(2, 0),
                              blurRadius: 20,
                            ),
                          ],
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
  ContactInfo({
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
