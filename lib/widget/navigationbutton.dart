// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';

class NavigationButton extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String text;
  final IconData icon;
  const NavigationButton({
    super.key,
    required this.text,
    required this.icon,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
   final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);

    return DesktopDimensions.screenWidth > mobilescreen
        ? Container(
            height: DesktopDimensions.w20 * 3.5,
            width: DesktopDimensions.w20 * 3.5,
            padding: EdgeInsets.symmetric(
                vertical: DesktopDimensions.w10 / 3,
                horizontal: DesktopDimensions.w10 / 1.5),
            decoration: BoxDecoration(
                color: selectedIndex == index
                    ? buttonColor
                    : Color.fromARGB(255, 252, 251, 251),
                borderRadius: BorderRadius.circular(DesktopDimensions.w10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: DesktopDimensions.w20,
                  color: selectedIndex == index ? Colors.white : Colors.black,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color:
                          selectedIndex == index ? Colors.white : Colors.black,
                      fontSize: DesktopDimensions.w15),
                )
              ],
            ),
          )
        : Container(
            height: MobileDimensions.w50 * 1.4,
            width: MobileDimensions.w50 * 1.4,
            padding: EdgeInsets.symmetric(
                vertical: MobileDimensions.w10,
                horizontal: MobileDimensions.w10),
            decoration: BoxDecoration(
                color: selectedIndex == index
                    ? buttonColor
                    : Color.fromARGB(255, 252, 251, 251),
                borderRadius: BorderRadius.circular(MobileDimensions.w10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: MobileDimensions.w20,
                  color: selectedIndex == index ? Colors.white : Colors.black,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color:
                          selectedIndex == index ? Colors.white : Colors.black,
                      fontSize: MobileDimensions.font13),
                )
              ],
            ),
          );
  }
}
