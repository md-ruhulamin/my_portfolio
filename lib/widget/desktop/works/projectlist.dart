// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio/screen/work.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
    required this.w20,
  });

  final double w20;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: w20,
        runSpacing: w20,
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
            title: "Expenses,Task and Notes Tracker App",
            subtitle: "Dart,Sqflite,GetX,Math",
            //  path: "assets/images/appss1.png",
            details:
                "Developed an app integrating expense tracking, task management, and note-taking with a user-friendly interface. Leveraged  to deliver an efficient and scalable solution.",
            url: "https://github.com/md-ruhulamin/ExNTask",
            preview:
                "https://drive.google.com/drive/u/2/folders/1rPFgHpP2FpNP2NJ-h1QGPMHlM6qDWYzQ",
          ),

          //  ProjectCard(
          //   title: "Teachingg-Edtech App",
          //   subtitle: "Firebase, Api, GetX, Video Player, Camera",
          //   //  path: "assets/images/appss1.png",
          //   details:
          //       "  developed a Flutter Edtech app facilitating online courses, featuring structured daily lessons with color-coded progression camera verification for class access, MCQ tests, and personalized feedbackbased on performance.. ",
          //   url: "https://github.com/md-ruhulamin/marine_edtech",
          //   preview:
          //       "https://github.com/md-ruhulamin/marine_edtech",
          //  ),
          // ProjectCard(
          //   title: "Food App | UI",
          //   subtitle: "Dart,Api,GetX",
          //   //  path: "assets/images/appss1.png",
          //   details:
          //       " Developed a customer-friendly food app, and redesigned the UI utilizing previous UI elements. Firebase and Shared Preference are used for storing user sessions and other info. GetX is used for state management.",
          //   url: "https://github.com/md-ruhulamin/food_delivery",
          //   preview:
          //       "https://drive.google.com/drive/folders/14rbl5MZfxT5WY6sP74feSNd03XoICbn3?usp=sharing",
          // ),
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
          ProjectCard(
            title: "Vocab Store",
            subtitle: "Firebase ,Flutter ,Local storage",
            //  details: "assets/images/healthcare.png",
            details:
                "I  developed a Flutter-based vocabulary-learning app where users can add, store, and update words in their dictionary using Firebase, and review them via quiz cards. Each quiz card displays the main word on one side and its meaning on the other.Also showing the use of that word in sentences via example.",
            url: "https://github.com/md-ruhulamin/vocab_store",
            preview:
                "https://drive.google.com/drive/folders/1wVDFBH08GDnCn-gJXfRvGlObLdgOyB33?usp=sharing",
          ),

          //  ProjectCard(
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
    );
  }
}
