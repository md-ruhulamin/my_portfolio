// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';

class SkillCard extends StatefulWidget {
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
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    // ignore: non_constant_identifier_names
    final DesktopDimensions = DesktopResponsive(w, h);

    return w > mobilescreen
        ? Expanded(
            child: MouseRegion(
              onEnter: (event) {
                setState(() {
                  isHover = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHover = false;
                });
              },
              child: Container(
                width: DesktopDimensions.w100 * 3,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(-2, 0),
                      blurRadius: isHover ? 20 : 10,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: const Offset(2, 0),
                      blurRadius: isHover ? 20 : 10,
                    ),
                  ],
                  color: cardColor,
                  //   color: Color.fromRGBO(45, 44, 44, 1).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: DesktopDimensions.w20,
                    vertical: DesktopDimensions.h10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        image: AssetImage(widget.path),
                        height: DesktopDimensions.w20 * 4),
                    Bigtext(
                      text: widget.title,
                      size: DesktopDimensions.subheadingfontsize,
                      color: Colors.white,
                    ),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: DesktopDimensions.carddetailsfontsize * .8),
                    )
                  ],
                ),
              ),
            ),
          )
        : Container(
            width: w,
            margin: EdgeInsets.symmetric(
                horizontal: MobileDimensions.w5,
                vertical: MobileDimensions.w10),
            decoration: BoxDecoration(
                color: mobileCardColor,
                //     boxShadow: const [
                //       BoxShadow(
                //           color: Colors.grey,
                //           blurRadius: 3,
                //           offset: (Offset(1, -1))),
                //       BoxShadow(
                //           color: Colors.grey,
                //           blurRadius: 3,
                //           offset: (Offset(-1, 1))),
                //     ],

                borderRadius: BorderRadius.circular(MobileDimensions.w10)),
            padding: EdgeInsets.symmetric(
                horizontal: MobileDimensions.w10,
                vertical: MobileDimensions.h10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage(widget.path),
                    height: MobileDimensions.w20 * 3),
                Bigtext(
                  text: widget.title,
                  size: MobileDimensions.font20,
                ),
                Bigtext(
                  text: widget.subtitle,
                  size: MobileDimensions.font17,
                )
              ],
            ),
          );
  }
}
