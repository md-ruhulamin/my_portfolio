import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';

class Education extends StatelessWidget {
  const Education({
    super.key,
    required this.w30,
    required this.h10,
    required this.w20,
    required this.w10,
  });

  final double w30;
  final double h10;
  final double w20;
  final double w10;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    final fizeinstance = Sizer(w, h);

    double w20 = fizeinstance.getWidth(20);
    double w10 = fizeinstance.getWidth(10);

    double w18 = fizeinstance.getWidth(18);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.menu_book_sharp,
              color: buttonColor,
              size: w20,
            ),
            Bigtext(
              text: "  Education",
              size: w20,
            ),
          ],
        ),
        SizedBox(
          height: w10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: w10, vertical: w10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(w10),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(text: "2018-2021"),
              Bigtext(
                text: "Computer Science and Engineering",
                size: w20,
              ),
              SmallText(
                text: "University of Chittagong",
                size: w18,
              ),
            ],
          ),
        ),
        SizedBox(
          height: w10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: w10, vertical: w10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(w10),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(text: "2015-2017"),
              Bigtext(
                text: "Higher Secondary School Certificate",
                size: w20,
              ),
              SmallText(
                text: "Govt Akbar Ali College",
                size: w18,
              ),
            ],
          ),
        )
      ],
    );
  }
}
