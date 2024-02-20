import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/screen/contact.dart';
import 'package:my_portfolio/screen/home.dart';
import 'package:my_portfolio/screen/myinfo.dart';
import 'package:my_portfolio/screen/resume.dart';
import 'package:my_portfolio/screen/work.dart';
import 'package:my_portfolio/widget/navigationbutton.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const Home(),
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
 final DesktopDimensions = DesktopResponsive(w, h);  return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: Padding(
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
                MyInfo(),
                SizedBox(
                  width: DesktopDimensions.w5,
                ),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(flex: 1, child: SizedBox()),
                        Container(
                          width: DesktopDimensions.w30 * 17,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: DesktopDimensions.w10,
                              vertical: DesktopDimensions.w10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(DesktopDimensions.w15),
                              border: Border.all(color: Colors.grey)),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
