import 'package:flutter/material.dart';
import 'package:my_portfolio/constant/dimension.dart';
import 'package:my_portfolio/constant/path.dart';
import 'package:my_portfolio/constant/size_definer.dart';
import 'package:my_portfolio/widget/url_launcher.dart';

class ContactCard extends StatefulWidget {
  final String url;
  final IconData icon;
  const ContactCard({
    super.key,
    required this.icon, required this.url,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool _isHovered = false;
  final openUrl = OpenUrl();
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    double h = screensize.height;
    double w = screensize.width;
    // ignore: non_constant_identifier_names

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          openUrl.LaunchUrl(widget.url);
        },
        child: Container(
            alignment: Alignment.center,
            height: w > mobilescreen ? w / 32 : MobileDimensions.w10 * 3.5,
            width: w > mobilescreen ? w / 32 : MobileDimensions.w10 * 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: _isHovered
                  ? [
                      const BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                          offset: (Offset(2, -2))),
                      const BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                          offset: (Offset(-2, 2))),
                    ]
                  : [
                      const BoxShadow(
                          color: Colors.white,
                          blurRadius: 1,
                          offset: (Offset(1, -1))),
                      const BoxShadow(
                          color: Colors.white,
                          blurRadius: 1,
                          offset: (Offset(-1, 1))),
                    ],
              color: _isHovered
                  ? const Color.fromARGB(255, 25, 23, 15)
                  : const Color.fromARGB(255, 229, 245, 229),
              shape: BoxShape.rectangle,
            ),
            child: Icon(
              widget.icon,
              size: w > mobilescreen ? w / 53 : MobileDimensions.w10 * 2.2,
              color: Colors.blue,
            )),
      ),
    );
  }
}
