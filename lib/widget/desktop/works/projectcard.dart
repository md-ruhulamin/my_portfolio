import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class ProjectCardWidget extends StatefulWidget {
    final double w300;
  final double w10;
  final double h10;
  final String details;
  final double h100;
  final String title;
  final double w20;
  final String tools;
  final OpenUrl openUrl;
  final String url;
  final String preview;

  const ProjectCardWidget({
    super.key,
    required this.w300,
    required this.w10,
    required this.h10,
    required this.details,
    required this.h100,
    required this.title,
    required this.w20,
    required this.tools,
    required this.openUrl,
    required this.url,
    required this.preview,
  });


  @override
  State<ProjectCardWidget> createState() => _ProjectCardWidgetState();
}

class _ProjectCardWidgetState extends State<ProjectCardWidget> {
  @override
  bool isHover = false;
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        width: widget.w300 * 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.w10 * 3),
          color: cardColor,
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
        ),
        padding:
            EdgeInsets.symmetric(horizontal: widget.w10, vertical: widget.h10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image(
            //     image: AssetImage(widget.path),
            //     fit: BoxFit.cover,
            //     height: widget.w300 / 3),
            FittedBox(
              child: Text(widget.title,
                  style: TextStyle(
                      color: textColor,
                      fontSize: widget.w20,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: widget.h10 / 3,
            ),

            // Bigtext(
            //               text:
            //                   "This repositoriy contains flutter implementations of food recipes and impresive UI design easy to use and smoot transitions of screen.",
            //               size: 13,color: Colors.grey,),
            // Bigtext(
            //   text:
            //       " Developed a customer-friendly food app using Flutter framework where users can perform several actions create accounts in various ways using Firebase, fetch data from Firebase, add to cart, add favorite, filter, place to order, etc. Also admin can control any account from the admin panel, add products, can edit product info.",
            //   size: 13,
            //   color: Colors.grey,
            // ),

  Bigtext(
              text:
              widget.details,
              size: 13,
              color: Colors.grey,
            ),
            SizedBox(
              height: widget.h10 / 3,
            ),
            FittedBox(
              child: Bigtext(
                text: widget.tools,
                size: 15,
                color: const Color.fromARGB(255, 206, 206, 206),
              ),
            ),
            SizedBox(
              height: widget.h10 / 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      widget.openUrl.LaunchUrl(widget.url);
                    },
                    child: Bigtext(
                      text: "Check on Github",
                      size: 17,
                      color: Colors.white,
                    )),
                InkWell(
                    onTap: () {
                      widget.openUrl.LaunchUrl(widget.preview);
                    },
                    child: Bigtext(
                      text: "Read More >>",
                      size: 17,
                      color: Colors.blue,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
