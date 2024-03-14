import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/colors.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/size_definer.dart';

class ContactBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const ContactBar(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
      final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
 final DesktopDimensions = DesktopResponsive(w, h);

    return w>mobilescreen?
    
    
     Container(
      padding: EdgeInsets.all(DesktopDimensions.w10 / 2),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size:  DesktopDimensions.w20,
          ),
           SizedBox(
            width:DesktopDimensions.w10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: DesktopDimensions.font15, color: Colors.grey),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize:  DesktopDimensions.font15,
                  color:textColor
                ),
              ),
            ],
          )
        ],
      ),
    )
    
    
    
    : Container(
      padding: EdgeInsets.all(MobileDimensions.w10 / 2),
      child: Row(
        children: [
          Icon(
            icon,
            color: buttonColor,
            size: 20,
          ),
           const SizedBox(
            width:3,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                subtitle,
                style:  TextStyle(
                  fontSize:  MobileDimensions.font13,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
