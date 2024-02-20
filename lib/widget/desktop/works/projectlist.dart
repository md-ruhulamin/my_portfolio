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
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: w20,
      runSpacing: w20,
      children: <Widget>[
        ProjectCard(
          title: "Delicious|A food delivey App",
          subtitle: "Dart,Firebase,Api,GetX,Payment",
          path: "assets/images/delicious.png",
          url: "https://github.com/md-ruhulamin/delicious/",
          preview:
              "https://drive.google.com/drive/folders/1LujI03mCuy9H_rqpAJTyJyLpVSv7gTss?usp=sharing",
        ),
        ProjectCard(
          title: "HealthCare | Android App",
          subtitle: "Java,Firebase,API",
          path: "assets/images/healthcare.png",
          url: "https://github.com/md-ruhulamin/healthcare",
          preview: "preview",
        ),
        ProjectCard(
          title: "T-Shirt Size Prediction App",
          subtitle: "Dart,KNN-Machine Learning",
          path: "assets/images/tshirt.png",
          url: "https://github.com/md-ruhulamin/t_shirt",
          preview:
              "https://drive.google.com/drive/folders/1v4EoiuQPENizLKLFND9D3Hh7r9elrP7l?usp=sharing",
        ),
        ProjectCard(
          title: "Food Delivery App | UI",
          subtitle: "Dart,Api,GetX",
          path: "assets/images/appss1.png",
          url: "https://github.com/md-ruhulamin/food_delivery",
          preview:
              "https://drive.google.com/drive/folders/14rbl5MZfxT5WY6sP74feSNd03XoICbn3?usp=sharing",
        ),
        ProjectCard(
          title: "Gender Bias Text Detection",
          subtitle: "Android ,Java,Machine Learning",
          path: "assets/images/genderbias.png",
          url:
              "https://drive.google.com/drive/folders/1-0zhECc7EJs5x9yBZl0jloBkaXAEQYtP?usp=sharing",
          preview:
              "https://drive.google.com/drive/folders/1-0zhECc7EJs5x9yBZl0jloBkaXAEQYtP?usp=sharing",
        ),
      ],
    );
  }
}
