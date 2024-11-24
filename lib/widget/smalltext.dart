// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';


class SmallText extends StatelessWidget {
  final String text;
  double size;
  final Color color;
  SmallText({
    Key? key,
    required this.text,
    this.size = 17,
     this.color=Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;

    double w = screensize.width;
    //double ratio = 1600 / size;

    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: color, fontSize: w > 650 ? (w * size) / 1600 : size),
    );
  }
}
