import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/widget/bigText.dart';
import 'package:my_portfolio/widget/desktop/resume/chip_container.dart';

class SoftSkill extends StatelessWidget {
   SoftSkill({
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
      children: [
        Bigtext(
          text: "Soft Skills",
          size: DesktopDimensions.subheadingfontsize,
        ),
        SizedBox(
          height:DesktopDimensions. w10,
        ),
        Wrap(
          spacing:DesktopDimensions. w10, // gap between adjacent chips
          runSpacing: DesktopDimensions.w10, // gap between lines
          children: const <Widget>[
            ChipContainer(text: "Time Management"),
            ChipContainer(text: "Mentorship"),
            ChipContainer(text: "Writting"),
            ChipContainer(text: "Flexibility"),
            ChipContainer(text: "Research"),
            ChipContainer(text: "Communication"),
            ChipContainer(text: "Quick Learner"),
          ],
        ),
      ],
    );
  }
}
