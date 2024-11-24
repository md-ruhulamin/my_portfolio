// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/screen/contact.dart';
import 'package:my_portfolio/screen/home.dart';
import 'package:my_portfolio/screen/myinfo.dart';
import 'package:my_portfolio/screen/resume.dart';
import 'package:my_portfolio/screen/work.dart';
import 'package:my_portfolio/widget/navigationbutton.dart';

class DesktopHomePage extends StatefulWidget {
  DesktopHomePage({super.key});

  @override
  State<DesktopHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<DesktopHomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const HomeScreenForDesktop(),
    const Resume(),
    const Work(),
    const Contact()
  ];

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    // ignore: non_constant_identifier_names
    final DesktopDimensions = DesktopResponsive(w, h);
    bool isDraweropen = true;
    return Scaffold(
      drawer: Drawer(
        child: MyInfo(),),
      
      body: Stack(
        children: [
          Positioned(child: FlyingBubbles()),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  top: DesktopDimensions.h10,
                  left: DesktopDimensions.w10 * 5,
                  right: DesktopDimensions.w10 * 5),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: '</ Ruhul',
                                  style: TextStyle(
                                      fontSize: DesktopDimensions.font25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontFamily: "Lobster ")),
                              TextSpan(
                                  text: ' Amin >',
                                  style: TextStyle(
                                      fontSize: DesktopDimensions.font25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontFamily: "Lobster")),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: DesktopDimensions.w30 * 2,
                          decoration: BoxDecoration(
                              color: const Color(0xEBF2FA),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.dark_mode_outlined,
                                size: DesktopDimensions.w30,
                              )))
                    ],
                  ),
                  SizedBox(
                    height: DesktopDimensions.w10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (DesktopDimensions.screenWidth > 1200) MyInfo(),
                      SizedBox(
                        width: DesktopDimensions.w5 / 2,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Row(
                            children: [
                              if (DesktopDimensions.screenWidth <= 1200)
                                Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: TweenAnimationBuilder(
                                      tween: Tween(begin: 0.0, end: 1.0),
                                      duration:
                                          const Duration(milliseconds: 200),
                                      builder: (context, value, child) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              isDraweropen = true;
                                               Scaffold.of(context).openDrawer();
                                              print(isDraweropen);
                                            });
                                          },
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Container(
                                            height: 20 * 2.0 * value,
                                            width: 20 * 2.0 * value,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.black,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.pinkAccent
                                                          .withOpacity(.5),
                                                      offset:
                                                          const Offset(1, 1)),
                                                  BoxShadow(
                                                      color: Colors.blue
                                                          .withOpacity(.5),
                                                      offset:
                                                          const Offset(-1, -1)),
                                                ]),
                                            child: Center(
                                                child: ShaderMask(
                                              shaderCallback: (bounds) {
                                                return LinearGradient(colors: [
                                                  Colors.pink,
                                                  Colors.blue.shade900
                                                ]).createShader(bounds);
                                              },
                                              child: Icon(
                                                Icons.menu,
                                                color: Colors.white,
                                                size: 20 * 1.2 * value,
                                              ),
                                            )),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if (DesktopDimensions.screenWidth > 1200)
                                const Expanded(flex: 1, child: SizedBox()),
                              Container(
                                width: DesktopDimensions.w30 * 17,
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: DesktopDimensions.w10,
                                    vertical: DesktopDimensions.w10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        DesktopDimensions.w15),
                                    border: Border.all(color: Colors.grey)),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 0;
                                          });
                                        },
                                        child: NavigationButton(
                                          index: 0,
                                          selectedIndex: selectedIndex,
                                          icon: Icons.home_outlined,
                                          text: "Home",
                                        ),
                                      ),
                                      SizedBox(
                                        width: MobileDimensions.w10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 1;
                                          });
                                        },
                                        child: NavigationButton(
                                          index: 1,
                                          selectedIndex: selectedIndex,
                                          icon: Icons.document_scanner_sharp,
                                          text: "Resume",
                                        ),
                                      ),
                                      SizedBox(
                                        width: MobileDimensions.w10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 2;
                                          });
                                        },
                                        child: NavigationButton(
                                          index: 2,
                                          selectedIndex: selectedIndex,
                                          icon: Icons.work_history_outlined,
                                          text: "Work",
                                        ),
                                      ),
                                      SizedBox(
                                        width: MobileDimensions.w10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 3;
                                          });
                                        },
                                        child: NavigationButton(
                                          index: 3,
                                          selectedIndex: selectedIndex,
                                          icon: Icons.contacts_outlined,
                                          text: "Contact",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: DesktopDimensions.h10,
                          ),
                          pages[selectedIndex]
                        ],
                      ))
                    ],
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class FlyingBubbles extends StatefulWidget {
  @override
  _FlyingBubblesState createState() => _FlyingBubblesState();
}

class _FlyingBubblesState extends State<FlyingBubbles> {
  late List<Bubble> bubbles;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    bubbles = [];
    for (int i = 0; i < 10; i++) {
      bubbles.add(_createRandomBubble());
    }

    timer = Timer.periodic(Duration(milliseconds: 50), (Timer t) {
      _updateBubbles();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  Bubble _createRandomBubble() {
    final random = Random();
    return Bubble(
      position: Offset(random.nextDouble(), random.nextDouble()),
      direction: Offset(
          random.nextDouble() * 0.2 - 0.1, random.nextDouble() * 0.2 - 0.1),
      size: random.nextDouble() * 15 + random.nextInt(70) + 20,
      color: generateRandomColor(),
    );
  }

  static Color generateRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      .4,
    );
  }

  void _updateBubbles() {
    setState(() {
      for (int i = 0; i < bubbles.length; i++) {
        Bubble bubble = bubbles[i];
        bubble.position += bubble.direction * 0.005;

        // Check if the bubble hits the left or right boundary
        if (bubble.position.dx < 0 || bubble.position.dx > 1) {
          bubble.direction = Offset(-bubble.direction.dx, bubble.direction.dy);
        }

        // Check if the bubble hits the top or bottom boundary
        if (bubble.position.dy < 0 || bubble.position.dy > 1) {
          bubble.direction = Offset(bubble.direction.dx, -bubble.direction.dy);
        }

        bubbles[i] = bubble;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlue[200]!,
            Color.fromARGB(255, 238, 188, 249),
            Color.fromARGB(255, 52, 68, 70)
          ],
        ),
      ),
      child: Stack(
        children: [
          for (var bubble in bubbles)
            Positioned(
              left: MediaQuery.of(context).size.width * bubble.position.dx,
              top: MediaQuery.of(context).size.height * bubble.position.dy,
              child: Container(
                width: bubble.size,
                height: bubble.size,
                decoration: BoxDecoration(
                  color: bubble.color.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class Bubble {
  Offset position;
  Offset direction;
  double size;
  Color color;

  Bubble({
    required this.position,
    required this.direction,
    required this.size,
    required this.color,
  });
}
