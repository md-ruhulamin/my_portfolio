

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';

class Experience extends StatelessWidget {
  const Experience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.menu_book_sharp,
              color: buttonColor,
              size:DesktopDimensions. w20,
            ),
            Bigtext(
              text: "  Experience",
              size: DesktopDimensions.w20,
            ),
          ],
        ),
        SizedBox(
          height:DesktopDimensions. w10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal:DesktopDimensions. w20, vertical:DesktopDimensions. w10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DesktopDimensions.w10),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(text: "2021-Present"),
              Bigtext(
                text: "Flutter App Developer",
                size:  DesktopDimensions.font20,
              ),
              SmallText(
                text:
                    "I have developed many software for academic purposes. Also, I have developed personal projects such as food apps, notes apps, integrated machine learning,  Firebase, payment, google Maps, API, and many more.",
                size: DesktopDimensions.font17,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
