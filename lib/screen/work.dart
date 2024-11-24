// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/mobile/work/card_widget.dart';
import 'package:my_portfolio/mobile/work/work.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/desktop/works/projectcard.dart';
import 'package:my_portfolio/widget/desktop/works/projectlist.dart';
import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    // ignore: non_constant_identifier_names
    final DesktopDimensions = DesktopResponsive(w, h);
    return MobileDimensions.screenWidth > mobilescreen
        ? Container(
            // width: double.infinity,
            padding: EdgeInsets.only(
                left: DesktopDimensions.w20,
                right: DesktopDimensions.w20,
                top: DesktopDimensions.w15,
                bottom: DesktopDimensions.w10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DesktopDimensions.w20),
              color: bgColor,
            ),
            height: DesktopDimensions.Pagesize,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: DesktopDimensions.w10,
                      ),
                      Bigtext(
                          text: "Projects",
                          size: DesktopDimensions.headingfontsize),
                      SizedBox(
                        width: DesktopDimensions.w20,
                      ),
                      Text(
                        "Explore some of my projects",
                        style: TextStyle(
                            color: textColor,
                            fontSize: DesktopDimensions.subheadingfontsize,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DesktopDimensions.w10,
                  ),
                  ProjectList(
                    w20: DesktopDimensions.w20,
                  )
                ],
              ),
            ),
          )
        : WorkScreenForMobile();
  }
}



class ProjectCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String url;
  final String preview;
  final String details;
  const ProjectCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.details,
    required this.url,
    required this.preview,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    final fizeinstance = Sizer(w, h);

    double w20 = fizeinstance.getWidth(20);
    double w10 = fizeinstance.getWidth(10);

    double h100 = fizeinstance.getHeight(100);
    double h10 = fizeinstance.getHeight(10);
    double w300 = fizeinstance.getWidth(300);
    final openUrl = OpenUrl();
    return MobileDimensions.screenWidth > mobilescreen
        ? ProjectCardWidget(
            w300: w300,
            w10: w10,
            h10: h10,
            details:details,
            h100: h100,
            title: title,
            w20: w20,
            tools: subtitle,
            openUrl: openUrl,
            url: url,
            preview: preview)
        : ProjectCardForMobile(title: title, subtitle: subtitle,   details:details, openUrl: openUrl, url: url, preview: preview);
  }
}

