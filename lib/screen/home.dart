// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/skillcard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

        final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 final DesktopDimensions = DesktopResponsive(w, h);
    return MobileDimensions.screenWidth > mobilescreen
        ? Container(

            padding: EdgeInsets.only(
                left:  DesktopDimensions.w30, right:  DesktopDimensions.w30,
                 top:  DesktopDimensions.w15, bottom: DesktopDimensions. w10 / 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular( DesktopDimensions.w10),
              color:  bgColor,
              // color:  Color.fromARGB(255, 52, 68, 70)
            ),
            height:DesktopDimensions.Pagesize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bigtext(
                    text: "About Me",size: DesktopDimensions.headingfontsize,color: Colors.white
                  ),
                  Text(
                    "Hello there! I'm thrilled to welcome you to my portfolio. I am a passionate and versatile app developer with a keen interest in exploring the latest cutting-edge technologies. My journey in the world of app development has been nothing short of exhilarating, and I constantly strive to enhance my skills and embrace emerging trends in the industry.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize:DesktopDimensions.detailsfontsize,color: Colors.white),
                  ),
                  SizedBox(
                    height: DesktopDimensions.h10/2,
                  ),
                  Bigtext(
                    text: "What I do !",color: Colors.white,
                    size: DesktopDimensions.subheadingfontsize,
                   
                  ),
                  SizedBox(
                    height: MobileDimensions.h10 / 2,
                  ),
                  Row(children: [
                    SkillCard(
                      title: "App Development",
                      subtitle:
                          "I am a Flutter app developer and very passionate about turning thinking into reality.Everytime , I explore new technology and try to learn.",
                      path: "assets/images/appdevelopment2.png",
                    ),
                    SizedBox(
                      width:DesktopDimensions.w20,
                    ),
                    SkillCard(
                      path: "assets/images/uxdesign.png",
                      title: "UI/UX Design",
                      subtitle:
                          "As a software developer, UI / UX design is very important to me. Continuously, I try to create new things, more creative and attractive design.",
                    ),
                    SizedBox(
                      width:DesktopDimensions. w20,
                    ),
                    SkillCard(
                      path: "assets/images/website.png",
                      title: "Web Design",
                      subtitle:
                          "A web developer,who is responsible for the design,and maintenance of websites.I can create any website and make it functional, what user's want.",
                    ),
                  ]),
                ],
              ),
            ))
        : Container(
            padding: EdgeInsets.symmetric(horizontal:MobileDimensions. w10, vertical:MobileDimensions. w10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MobileDimensions.w15),
              //    color: Colors.white,
            ),
            //  height: pagesize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bigtext(
                  size: MobileDimensions.font25,
                  text: "About Me",
                ),
                Text(
                  "Hello there! I'm thrilled to welcome you to my portfolio. I am a passionate and versatile app developer with a keen interest in exploring the latest cutting-edge technologies. My journey in the world of app development has been nothing short of exhilarating, and I constantly strive to enhance my skills and embrace emerging trends in the industry.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: MobileDimensions.font13),
                ),
                SizedBox(
                  height: MobileDimensions.h10,
                ),
                Bigtext(
                  text: "What I do !",
                  size: MobileDimensions.font17,
                  color: Colors.black,
                ),
                SizedBox(
                  height:MobileDimensions. h10 / 2,
                ),
                Column(children: [
                  SkillCard(
                    title: "App Development",
                    subtitle:
                        "I am a Flutter app developer and very passionate about turning thinking into reality.Everytime , I explore new technology and try to learn.",
                    path: "assets/images/appdevelopment2.png",
                  ),
                  SizedBox(
                    height:MobileDimensions. h10 / 2,
                  ),
                  SkillCard(
                    path: "assets/images/uxdesign.png",
                    title: "UI/UX Design",
                    subtitle:
                        "As a software developer, UI / UX design is very important to me. Continuously, I try to create new things, more creative and attractive design.",
                  ),
                  SizedBox(
                    height: MobileDimensions.h10 / 2,
                  ),
                  SkillCard(
                    path: "assets/images/website.png",
                    title: "Web Design",
                    subtitle:
                        "A web developer ,who is responsible for the design, and maintenance of websites.I can create any website and make it functional and what user's want.",
                  ),
                ]),
              ],
            ));
  }
}
