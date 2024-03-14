// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
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
        : Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: MobileDimensions.w10,
                vertical: MobileDimensions.w10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MobileDimensions.w20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Bigtext(
                      text: "Projects",
                      size: MobileDimensions.font25,
                    ),
                    SizedBox(
                      width: MobileDimensions.w10,
                    ),
                    Text(
                      "Explore some of my projects",
                      style: TextStyle(
                          fontSize: MobileDimensions.font15,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: MobileDimensions.h5,
                ),
              

                Expanded(
                  child: Wrap(
                    runAlignment: WrapAlignment.spaceBetween,
                    alignment: WrapAlignment.spaceBetween,
                    spacing: MobileDimensions.w20,
                    runSpacing: MobileDimensions.w20,
                    children: <Widget>[
                      ProjectCard(
            title: "Delicious | A food delivey App",
            subtitle: "Dart,Firebase,Api,GetX,Payment",
            details:
                "Developed a customer-friendly food app using Flutter framework where users can perform several actions create accounts in various ways using Firebase, fetch data from Firebase, add to cart, add favorite, filter, place to order, etc. Also admin can control any account from the admin panel, add products, can edit product info.",
            //path: "assets/images/delicious.png",
            url: "https://github.com/md-ruhulamin/delicious/",
            preview:
                "https://drive.google.com/drive/folders/1LujI03mCuy9H_rqpAJTyJyLpVSv7gTss?usp=sharing",
          ),
         
          ProjectCard(
            title: "T-Shirt Size Prediction App",
            subtitle: "Dart,KNN-Machine Learning",
            details:
                "An App was developed using flutter and machine learning algorithm KNN(K Nearest Neighbour) where the user provides their height and weight, and based on this information application provides perfect size",
            url: "https://github.com/md-ruhulamin/t_shirt",
            preview:
                "https://drive.google.com/drive/folders/1v4EoiuQPENizLKLFND9D3Hh7r9elrP7l?usp=sharing",
          ),
          ProjectCard(
            title: "Food App | UI",
            subtitle: "Dart,Api,GetX",
            //  path: "assets/images/appss1.png",
            details:
                " Developed a customer-friendly food app, and redesigned the UI utilizing previous UI elements. Firebase and Shared Preference are used for storing user sessions and other info. GetX is used for state management.",
            url: "https://github.com/md-ruhulamin/food_delivery",
            preview:
                "https://drive.google.com/drive/folders/14rbl5MZfxT5WY6sP74feSNd03XoICbn3?usp=sharing",
          ),
          ProjectCard(
            title: "Gender Bias Text Detection",
            subtitle: "Android ,Java,Machine Learning",
            //  path: "assets/images/genderbias.png",
            details:
                " An android app was developed with the help of machine learning and deep learning models, analyzing the gender-based bangla text (comments) of social media has been detected whether the speech supports gender bias or not",
            url:
                "https://drive.google.com/drive/folders/1-0zhECc7EJs5x9yBZl0jloBkaXAEQYtP?usp=sharing",
            preview:
                "https://drive.google.com/drive/folders/1-0zhECc7EJs5x9yBZl0jloBkaXAEQYtP?usp=sharing",
          ),
          ProjectCard(
            title: "Temporary Email via RESTful API",
            subtitle: "Flutter ,API, HTTP,GetX",
            //   path: "assets/images/genderbias.png",

            details:
                "A temporary email application works by generating a temporary email address that you can use for a specific purpose. such as: Verification ,  Privacy and Spam Prevention  etc.",
            url:
                "https://github.com/md-ruhulamin/temporary__email",
            preview:
                "https://github.com/md-ruhulamin/temporary__email",
          ), ProjectCard(
            title: "HealthCare | Android App",
            subtitle: "Java,Firebase,API",
            //  details: "assets/images/healthcare.png",
            details:
                "A healthcare app that provides health realeted services and provide online appoinment to any doctor",
            url: "https://github.com/md-ruhulamin/healthcare",
            preview: "preview",
          ),
        ],
                  ),
                )
              ],
            ),
          );
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
    return MobileDimensions.screenWidth > 650
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
        : Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: (Offset(1, -1))),
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: (Offset(-1, 1))),
                ],
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(MobileDimensions.w10)),
            padding: EdgeInsets.symmetric(
                horizontal: MobileDimensions.w10,
                vertical: MobileDimensions.w10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              //  Image(image: AssetImage(path), height: MobileDimensions.h100),
                Text(title,
                    style: TextStyle(
                        fontSize: MobileDimensions.font17 * 1.2,
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
                          size: MobileDimensions.font15,
                          color: Colors.blue,
                        )),
                    InkWell(
                        onTap: () {
                          openUrl.LaunchUrl(preview);
                        },
                        child: Bigtext(
                          text: "See Details",
                          size: MobileDimensions.font15,
                          color: Colors.blue,
                        )),
                  ],
                )
              ],
            ),
          );
  }
}
