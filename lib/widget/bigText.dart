import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/size_definer.dart';

class Bigtext extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  Bigtext(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 18});

  @override
  Widget build(BuildContext context) {
  final screensize = MediaQuery.of(context).size;
   
    double w = screensize.width;
    double ratio = 1600 / size;
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize:w>mobilescreen? w/ratio: size  , color: color, fontWeight: FontWeight.w400),
    );
  }
}
