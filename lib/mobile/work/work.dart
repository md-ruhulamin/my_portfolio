import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/screen/work.dart';
import 'package:my_portfolio/widget/bigText.dart';

class WorkScreenForMobile extends StatelessWidget {
  const WorkScreenForMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1170,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(
          horizontal: MobileDimensions.w10, vertical: MobileDimensions.w10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bigtext(
                text: "Projects",
                color: Colors.black,
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
              children: const <Widget>[
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
                  title: "Expenses,Task and Notes Tracker App",
                  subtitle: "Dart,Sqflite,GetX,Math",
                  //  path: "assets/images/appss1.png",
                  details:
                      "Developed an app integrating expense tracking, task management, and note-taking with a user-friendly interface. Leveraged  to deliver an efficient and scalable solution.",
                  url: "https://github.com/md-ruhulamin/ExNTask",
                  preview:
                      "https://drive.google.com/drive/u/2/folders/1rPFgHpP2FpNP2NJ-h1QGPMHlM6qDWYzQ",
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
                  title: "Teachingg-Edtech App",
                  subtitle: "Firebase, Api, GetX, Video Player, Camera",
                  //  path: "assets/images/appss1.png",
                  details:
                      "Developed a Flutter Edtech app facilitating online courses, featuring structured daily lessons with color-coded progression camera verification for class access, MCQ tests, and personalized feedbackbased on performance.. ",
                  url: "https://github.com/md-ruhulamin/marine_edtech",
                  preview: "https://github.com/md-ruhulamin/marine_edtech",
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
                  url: "https://github.com/md-ruhulamin/temporary__email",
                  preview: "https://github.com/md-ruhulamin/temporary__email",
                ),
                // ProjectCard(
                //   title: "HealthCare | Android App",
                //   subtitle: "Java,Firebase,API",
                //   //  details: "assets/images/healthcare.png",
                //   details:
                //       "A healthcare app that provides health realeted services and provide online appoinment to any doctor",
                //   url: "https://github.com/md-ruhulamin/healthcare",
                //   preview: "preview",
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
