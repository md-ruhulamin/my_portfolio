// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String path;
  const SkillCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
   final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);

    return w > mobilescreen
        ? Expanded(
            child: Container(
              width: DesktopDimensions.w100*3,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: (Offset(1, -1))),
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: (Offset(-1, 1))),
                  ],
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(DesktopDimensions.w10)),
              padding: EdgeInsets.symmetric(horizontal:DesktopDimensions. w20, vertical: DesktopDimensions.h10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage(path), height:DesktopDimensions.w20 * 4),
                  Bigtext(
                    text: title,
                    size: DesktopDimensions.subheadingfontsize,
                  ),
                  SmallText(
                      text: subtitle,
                      size: DesktopDimensions.carddetailsfontsize)
                ],
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.symmetric(horizontal:MobileDimensions .w10, vertical: MobileDimensions .w10),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: (Offset(1, -1))),
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: (Offset(-1, 1))),
                ],
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(MobileDimensions .w10)),
            padding: EdgeInsets.symmetric(horizontal: MobileDimensions .w10, vertical: MobileDimensions .h10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage(path), height: MobileDimensions.w20 * 3),
                Bigtext(
                  text: title,
                  size: MobileDimensions.font20,
                ),
                Bigtext(
                  text: subtitle,
                  size: MobileDimensions.font15,
                )
              ],
            ),
          );
  }
}
