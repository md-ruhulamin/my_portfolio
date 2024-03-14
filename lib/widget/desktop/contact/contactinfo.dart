
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/widget/smalltext.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
    required this.w20,
    required this.h20,
    required this.w10,
    required this.w25,
  });

  final double w20;
  final double h20;
  final double w10;
  final double w25;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w20/2, vertical: h20/2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(w10),
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
                size: w25,
              ),
              SmallText(
                text: " Phone No :",
                size: 21,
              ),
            ],
          ),
          SmallText(
            text: "    +8801568151821",
            size: 15,
          ),
          SmallText(
            text: "    +8801942127736",
            size: 15,
          ),
          Divider(),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: buttonColor,
                size: w25,
              ),
              SmallText(
                text: " Address",
                size: 21,
              ),
            ],
          ),
          SmallText(
            text: "    Shanthia,Pabna",
            size: 15,
          ),
          SmallText(
            text: "    Bangladesh",
            size: 15,
          ),
        ],
      ),
    );
  }
}
