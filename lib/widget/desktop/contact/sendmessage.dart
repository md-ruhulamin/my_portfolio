import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/screen/contact.dart';
import 'package:my_portfolio/widget/bigText.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
    required this.w15,
    required this.w20,
    required this.w10,
    required this.h10,
  });

  final double w15;
  final double w20;
  final double w10;
  final double h10;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: w15 / 2,
        ),           
      Row(
          children: [
            Expanded(
                child: TextFieldForContact(
                    text: "Enter Your Name", numberoflines: 1)),
            SizedBox(
              width: w20,
            ),
            Expanded(
                child: TextFieldForContact(
                    text: "Enter Your Email", numberoflines: 1))
          ],
        ),
        SizedBox(
          height: w10/2,
        ),
        
        Row(
          children: [
            Expanded(
              child: TextFieldForContact(
                  text: "Enter Your Message", numberoflines: 1),
            ),
          
          ],
        ),
        SizedBox(
          height: h10,
        ),
     
          Container(
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(w10)),
              padding: EdgeInsets.symmetric(
                  vertical: w10, horizontal: w15),
              child: Bigtext(
                text: "Send Message",
                color: Colors.white,
                size: w20,
              )),
      ],
    );
  }
}
