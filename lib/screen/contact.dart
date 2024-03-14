// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/widget/desktop/contact/contactinfo.dart';
import 'package:my_portfolio/widget/desktop/contact/hireme.dart';
import 'package:my_portfolio/widget/desktop/contact/sendmessage.dart';

import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    // ignore: non_constant_identifier_namesMobileDimensions
    final DesktopDimensions = DesktopResponsive(w, h);
    return MobileDimensions.screenWidth > mobilescreen
        ? Container(
            padding: EdgeInsets.only(
                left: DesktopDimensions.w20,
                right: DesktopDimensions.w20,
                top: DesktopDimensions.w15,
                bottom:DesktopDimensions. w10 / 2),
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
                    text: "Contact ",
                    size: DesktopDimensions.headingfontsize,
                  ),
                  SizedBox(
                    height: DesktopDimensions.w10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ContactInfo(
                          w20: DesktopDimensions.w20,
                          w10:DesktopDimensions.w10,
                          h20: DesktopDimensions.h20,
                          w25: DesktopDimensions.w25,
                        ),
                      ),
                      SizedBox(
                        width: DesktopDimensions.w20,
                      ),
                      Expanded(
                        flex: 2,
                        child: HireMeWidget(
                            w20: DesktopDimensions.w20, h10: DesktopDimensions.h10, w10: DesktopDimensions.w10, w15: DesktopDimensions.w15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DesktopDimensions.h10,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal:DesktopDimensions. w20, vertical:DesktopDimensions. h10),
                      decoration: BoxDecoration(
                         color: cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.pink,
              offset: const Offset(-2, 0),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.blue,
              offset: const Offset(2, 0),
              blurRadius:  10,
            ),
          ],
                          borderRadius: BorderRadius.circular(10)),
                      child:
                          SendMessage(w15:DesktopDimensions. w15, w20: DesktopDimensions.w20, w10: DesktopDimensions.w10, h10:DesktopDimensions. h10))
                ],
              ),
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(
                horizontal: MobileDimensions.w10,
                vertical: MobileDimensions.w10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MobileDimensions.w10),
              color: Colors.white,
            ),
            // height: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bigtext(
                  text: "Contact ",
                  size: MobileDimensions.font20,
                ),
                SizedBox(
                  height: MobileDimensions.w10 / 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: MobileDimensions.w10,
                          vertical: MobileDimensions.h10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MobileDimensions.w10),
                          color: cardColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: buttonColor,
                                  size: MobileDimensions.w20,
                                ),
                                SmallText(
                                  text: " Phone No :",
                                  size: MobileDimensions.font17,
                                ),
                              ],
                            ),
                            SmallText(
                              text: "    +8801568151821",
                              size: MobileDimensions.font15,
                            ),
                            SmallText(
                              text: "    +8801942127736",
                              size: MobileDimensions.font15,
                            ),
                            Divider(),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: buttonColor,
                                  size: MobileDimensions.w20,
                                ),
                                SmallText(
                                  text: " Address",
                                  size: MobileDimensions.font17,
                                ),
                              ],
                            ),
                            SmallText(
                              text: "    Shanthia,Pabna",
                              size: MobileDimensions.font17,
                            ),
                            SmallText(
                              text: "    Bangladesh",
                              size: MobileDimensions.font17,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MobileDimensions.w10,
                    ),
                  ],
                ),
                SizedBox(
                  height: MobileDimensions.h10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MobileDimensions.w20,
                      vertical: MobileDimensions.h10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MobileDimensions.w10),
                    color: const Color.fromARGB(255, 239, 239, 239),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        text:
                            "I am always open to discussing new projects, opportunities in tech world, partnerships and more so mentorship.You are welcome.If you got a new project,let's connect and make it happens.",
                        size: MobileDimensions.font15,
                      ),
                      SizedBox(
                        height: MobileDimensions.h10,
                      ),
                      InkWell(
                        onTap: () {
                          OpenUrl().launchEmail();
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(40)),
                            padding: EdgeInsets.symmetric(
                                vertical: MobileDimensions.w10 / 2,
                                horizontal: MobileDimensions.w10),
                            child: Bigtext(
                              text: "Hire Me",
                              color: Colors.white,
                              size: MobileDimensions.font13,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MobileDimensions.w10 / 2,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MobileDimensions.w20,
                        vertical: MobileDimensions.h10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 239, 239),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: MobileDimensions.w15 / 2,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextFieldForContact(
                                    text: " Name", numberoflines: 1)),
                            SizedBox(
                              width: MobileDimensions.w20,
                            ),
                            Expanded(
                                child: TextFieldForContact(
                                    text: "Email", numberoflines: 1))
                          ],
                        ),
                        SizedBox(
                          height: MobileDimensions.w10 / 2,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFieldForContact(
                                  text: "Your Message", numberoflines: 1),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MobileDimensions.w10,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: buttonColor,
                                borderRadius: BorderRadius.circular(40)),
                            padding: EdgeInsets.symmetric(
                                vertical: MobileDimensions.w10 / 2,
                                horizontal: MobileDimensions.w10),
                            child: Bigtext(
                              text: "Send Message",
                              color: Colors.white,
                              size: MobileDimensions.font13,
                            )),
                      ],
                    ))
              ],
            ),
          );
  }
}

class TextFieldForContact extends StatelessWidget {
  final String text;
  final int numberoflines;
  TextFieldForContact(
      {super.key, required this.text, required this.numberoflines});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);
    return Container(
        alignment: Alignment.centerLeft,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                color: Colors.white,
                  fontSize: DesktopDimensions.screenWidth > 650
                      ? DesktopDimensions.font15
                      : MobileDimensions.font15)),
        ));
  }
}
