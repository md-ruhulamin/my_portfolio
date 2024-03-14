import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/size_definer.dart';

class Bigtext extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  Bigtext(
      {super.key,
      required this.text,
      this.color = textColor,
      this.size = 18});

  @override
  Widget build(BuildContext context) {
  final screensize = MediaQuery.of(context).size;
   
    double w = screensize.width;
    double ratio = 1600 / size;
    return Text(
      
      text,
      maxLines: 4,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize:w>mobilescreen? w/ratio: size  , color: color, fontWeight: FontWeight.w400),
    );
  }
}
