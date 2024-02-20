import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/smalltext.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.w300,
    required this.w10,
    required this.h10,
    required this.path,
    required this.h100,
    required this.title,
    required this.w20,
    required this.subtitle,
    required this.openUrl,
    required this.url,
    required this.preview,
  });

  final double w300;
  final double w10;
  final double h10;
  final String path;
  final double h100;
  final String title;
  final double w20;
  final String subtitle;
  final OpenUrl openUrl;
  final String url;
  final String preview;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w300,
     
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, blurRadius: 3, offset: (Offset(1, -1))),
            BoxShadow(
                color: Colors.grey, blurRadius: 3, offset: (Offset(-1, 1))),
          ],
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(w10)),
      padding: EdgeInsets.symmetric(horizontal: w10, vertical: h10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: AssetImage(path),fit: BoxFit.cover, height: w300/3),
          FittedBox(
            child: Text(title,
                style: TextStyle(fontSize: w20, fontWeight: FontWeight.w600)),
          ),
          FittedBox(
            child: SmallText(
              text: subtitle,
              size: 15,
            ),
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
                    size: 17,
                    color: Colors.blue,
                  )),
              InkWell(
                  onTap: () {
                    openUrl.LaunchUrl(preview);
                  },
                  child: Bigtext(
                    text: "See Details",
                    size: 17,
                    color: Colors.blue,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
