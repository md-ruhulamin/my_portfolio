import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/desktop/resume/chip_container.dart';

class WorkSkill extends StatelessWidget {
  WorkSkill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Bigtext(
          text: "Work Skills",
          size: DesktopDimensions.subheadingfontsize
        ),
        SizedBox(
          height: DesktopDimensions.w10,
        ),
        Wrap(
          spacing:DesktopDimensions. w15 / 2, // gap between adjacent chips
          runSpacing:DesktopDimensions. w10, // gap between lines
          children: const <Widget>[
            ChipContainer(text: "Dart"),
            ChipContainer(text: "Flutter"),
            ChipContainer(text: "Dart"),
            ChipContainer(text: "Python"),
            ChipContainer(text: "Java"),
            ChipContainer(text: "C++"),
            ChipContainer(text: "Python"),
            ChipContainer(text: "Java"),
            ChipContainer(text: "C++"),
            ChipContainer(text: "SQL"),
            ChipContainer(text: "C"),
            ChipContainer(text: "ML"),
            ChipContainer(text: "NLP"),
            ChipContainer(text: "HTML"),
            ChipContainer(text: "CSS"),
          ],
        ),
      ],
    );
  }
}
