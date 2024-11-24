import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/screen/work.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class ProjectCardForMobile extends StatelessWidget {
  const ProjectCardForMobile({
    super.key,
    required this.details,
    required this.title,
    required this.subtitle,
    required this.openUrl,
    required this.url,
    required this.preview,
  });
  final String details;
  final String title;
  final String subtitle;
  final OpenUrl openUrl;
  final String url;
  final String preview;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          // boxShadow: const [
          //   BoxShadow(
          //       color: Colors.grey, blurRadius: 3, offset: (Offset(1, -1))),
          //   BoxShadow(
          //       color: Colors.grey, blurRadius: 3, offset: (Offset(-1, 1))),
          // ],
          color: mobileCardColor,
          borderRadius: BorderRadius.circular(MobileDimensions.w10)),
      padding: EdgeInsets.symmetric(
          horizontal: MobileDimensions.w10, vertical: MobileDimensions.w10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  Image(image: AssetImage(path), height: MobileDimensions.h100),
          Text(title,
              style: TextStyle(
                  fontSize: MobileDimensions.font17 * 1.2,color: Colors.black,

                  fontWeight: FontWeight.w600)),
                  Divider(height: 1,color: Color.fromARGB(255, 94, 94, 94),)
,          Text(details,
              maxLines: 5,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: MobileDimensions.font15,
                  fontWeight: FontWeight.w600)),
          SmallText(
            text: subtitle,
            size: MobileDimensions.font17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    openUrl.LaunchUrl(url);
                  },
                  child: Bigtext(
                    text: "See in Github",
                    size: MobileDimensions.font17,
                    color: Colors.blue,
                  )),
              InkWell(
                  onTap: () {
                    openUrl.LaunchUrl(preview);
                  },
                  child: Bigtext(
                    text: "See Details",
                    size: MobileDimensions.font17,
                    color: Colors.blue,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
