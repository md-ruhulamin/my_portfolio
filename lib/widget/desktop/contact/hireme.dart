
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class HireMeWidget extends StatelessWidget {
  const HireMeWidget({
    super.key,
    required this.w20,
    required this.h10,
    required this.w10,
    required this.w15,
  });

  final double w20;
  final double h10;
  final double w10;
  final double w15;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w20/2, vertical: h10/2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(w10),
       color: cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.pink,
              offset: const Offset(-2, 0),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.blue,
              offset: const Offset(2, 0),
              blurRadius:10,
            ),
          ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(
            text:
                "I am always open to discussing new projects, opportunities in tech world, partnerships and more so mentorship.You are welcome.If you got a new project,let's connect and make it happens.",
            size: 19,
          ),
          SizedBox(
            height: h10,
          ),
          InkWell(
            onTap: () {
              OpenUrl().launchEmail();
            },
            child: Container(
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(w10)),
                padding: EdgeInsets.symmetric(
                    vertical: w10, horizontal: w15),
                child: Bigtext(
                  text: "Hire Me",
                  color: Colors.white,
                  size: 16,
                )),
          ),
        ],
      ),
    );
  }
}
