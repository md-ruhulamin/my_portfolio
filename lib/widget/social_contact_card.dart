import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';

class ContactCard extends StatelessWidget {
  final IconData icon;
  const ContactCard({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
       final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 // ignore: non_constant_identifier_names
 final DesktopDimensions = DesktopResponsive(w, h);
    return Container(
       
        alignment: Alignment.center,
        height: w > mobilescreen ? w / 32 : MobileDimensions.w10 * 3.5,
        width: w > mobilescreen ? w / 32 : MobileDimensions.w10 * 3.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 229, 245, 229),
          shape: BoxShape.rectangle,
        ),
        child: Icon(
          icon,
          size: w > mobilescreen ? w / 53 :MobileDimensions.w10 * 2.2,
          color: Colors.blue,
        ));
  }
}
