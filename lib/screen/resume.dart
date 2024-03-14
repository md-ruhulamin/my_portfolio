// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';

import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/desktop/resume/chip_container.dart';
import 'package:my_portfolio/widget/desktop/resume/education.dart';
import 'package:my_portfolio/widget/desktop/resume/experience.dart';
import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/desktop/resume/softskill.dart';
import 'package:my_portfolio/widget/desktop/resume/workskill.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);

    return MobileDimensions.screenWidth > mobilescreen
        ? Container(
            
            padding: EdgeInsets.only(
                left: DesktopDimensions.w20, right: DesktopDimensions.w20, 
                top: DesktopDimensions.w15, bottom:DesktopDimensions. w10 / 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DesktopDimensions.w20),
               color:  bgColor,
            ),
            height: DesktopDimensions.Pagesize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bigtext(
                    text: "Resume",
                    size: DesktopDimensions.headingfontsize,
                    color:textColor
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child:
                            Education(w30:DesktopDimensions. w30, h10: DesktopDimensions.h10,
                             w20: DesktopDimensions.w20, w10: DesktopDimensions.w10),
                      ),
                      SizedBox(
                        width: DesktopDimensions.w10,
                      ),
                      Expanded(
                        child: Experience(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DesktopDimensions.w10 / 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: WorkSkill(),
                      ),
                      SizedBox(
                        width:DesktopDimensions. w10,
                      ),
                      Expanded(
                        flex: 1,
                        child: SoftSkill(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Container(
            // margin: EdgeInsets.only(top: w10),
            padding: EdgeInsets.symmetric(
                horizontal: MobileDimensions.w10,
                vertical: MobileDimensions.w10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MobileDimensions.w20),
              color: Colors.white,
            ),
            //  height: pagesize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bigtext(
                  text: "Resume",
                  size: MobileDimensions.font25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.menu_book_sharp,
                                color: buttonColor,
                                size: MobileDimensions.w20,
                              ),
                              Bigtext(
                                text: " Education",
                                size: MobileDimensions.font20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MobileDimensions.w10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: MobileDimensions.w10,
                                vertical: MobileDimensions.w10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(MobileDimensions.w10),
                                color: cardColor),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallText(
                                  text: "2018-2021",
                                  size: MobileDimensions.font15,
                                ),
                                Bigtext(
                                  text: "Computer Science and Engineering",
                                  size: MobileDimensions.font17,
                                ),
                                SmallText(
                                  text: "University of Chittagong",
                                  size: MobileDimensions.font15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MobileDimensions.w10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: MobileDimensions.w10,
                                vertical: MobileDimensions.h10),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(MobileDimensions.w10),
                              color: cardColor,

                              //   color: Colors.white.withOpacity(0.8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallText(
                                  text: "2015-2017",
                                  size: MobileDimensions.font15,
                                ),
                                Bigtext(
                                  text: "Higher Secondary School Certificate",
                                  size: MobileDimensions.font17,
                                ),
                                SmallText(
                                  text: "Govt Akbar Ali College",
                                  size: MobileDimensions.font15,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MobileDimensions.w10,
                    ),
                  ],
                ),
                SizedBox(height: MobileDimensions.w10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Bigtext(
                            text: "Work Skills",
                            size: MobileDimensions.font20,
                          ),
                          SizedBox(
                            height: MobileDimensions.w10,
                          ),
                          Wrap(
                            spacing: MobileDimensions.w15 /
                                2, // gap between adjacent chips
                            runSpacing:
                                MobileDimensions.w10, // gap between lines
                            children: <Widget>[
                              ChipContainer(text: "Dart"),
                              ChipContainer(text: "Flutter"),
                              ChipContainer(text: "Dart"),
                              ChipContainer(text: "C"),
                              ChipContainer(text: "Python"),
                              ChipContainer(text: "Java"),
                              ChipContainer(text: "C++"),
                              ChipContainer(text: "SQL"),
                              ChipContainer(text: "ML"),
                              ChipContainer(text: "NLP"),
                              ChipContainer(text: "HTML"),
                              ChipContainer(text: "CSS"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MobileDimensions.w10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Bigtext(
                            text: "Soft Skills",
                            size: MobileDimensions.font20,
                          ),
                          SizedBox(
                            height: MobileDimensions.w10,
                          ),
                          Wrap(
                            spacing: MobileDimensions
                                .w10, // gap between adjacent chips
                            runSpacing:
                                MobileDimensions.w10, // gap between lines
                            children: <Widget>[
                              ChipContainer(text: "Management"),
                              ChipContainer(text: "Mentorship"),
                              ChipContainer(text: "Writting"),
                              ChipContainer(text: "Research"),
                              ChipContainer(text: "Communication"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MobileDimensions.h10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book_sharp,
                          color: buttonColor,
                          size: MobileDimensions.w20,
                        ),
                        Bigtext(
                          text: "  Experience",
                          size: MobileDimensions.font20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MobileDimensions.h10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MobileDimensions.w10,
                          vertical: MobileDimensions.w10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                              text: "2021-Present",
                              size: MobileDimensions.font15),
                          Bigtext(
                            text: "Flutter App Developer",
                            size: MobileDimensions.font20,
                          ),
                          SmallText(
                            text:
                                "I have developed many software for academic purposes. Also, I have developed personal projects such as food apps, notes apps, integrated machine learning,  Firebase, payment, google Maps, API, and many more.",
                            size: MobileDimensions.font15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
