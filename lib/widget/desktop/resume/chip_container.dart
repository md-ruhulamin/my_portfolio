import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/smalltext.dart';

class ChipContainer extends StatelessWidget {
  final String text;
  const ChipContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    // ignore: non_constant_identifier_names
    final DesktopDimensions = DesktopResponsive(w, h);

    double w10 = DesktopDimensions.w10;

    0;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w10, vertical: w10/2 ),
      decoration: BoxDecoration(
          color: staticColor,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(w10 / 2)),
      child: SmallText(
        text: text,
        size: DesktopDimensions.screenWidth > 650
            ? DesktopDimensions.detailsfontsize
            : MobileDimensions.font13,
      ),
    );
  }
}
