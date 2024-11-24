import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/skillcard.dart';

class HomeScreenForMobile extends StatelessWidget {
  const HomeScreenForMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: MobileDimensions.w10, vertical: MobileDimensions.w10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Bigtext(
                size: MobileDimensions.font25,
                text: "About Me",
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "Hello there! I'm thrilled to welcome you to my portfolio. I am a passionate and versatile app developer with a keen interest in exploring the latest cutting-edge technologies. My journey in the world of app development has been nothing short of exhilarating, and I constantly strive to enhance my skills and embrace emerging trends in the industry.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: MobileDimensions.font17,color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MobileDimensions.h10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Bigtext(
                text: "What I do !",
                size: MobileDimensions.font20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MobileDimensions.h10 / 2,
            ),
            Column(children: [
              const SkillCard(
                title: "App Development",
                subtitle:
                    "I am a Flutter app developer and very passionate about turning thinking into reality.Everytime , I explore new technology and try to learn.",
                path: "assets/images/appdevelopment2.png",
              ),
              SizedBox(
                height: MobileDimensions.h10 / 2,
              ),
              const SkillCard(
                path: "assets/images/uxdesign.png",
                title: "UI/UX Design",
                subtitle:
                    "As a software developer, UI / UX design is very important to me. Continuously, I try to create new things, more creative and attractive design.",
              ),
              SizedBox(
                height: MobileDimensions.h10 / 2,
              ),
              const SkillCard(
                path: "assets/images/website.png",
                title: "Web Design",
                subtitle:
                    "A web developer ,who is responsible for the design, and maintenance of websites.I can create any website and make it functional and what user's want.",
              ),
            ]),
          ],
        ));
  }
}
