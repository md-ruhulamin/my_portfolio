// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/testing/homefortesting.dart';
import 'package:my_portfolio/testing/widget.dart';

class SecondHalfPage extends StatelessWidget {
  final PageControlle pageController = Get.put(PageControlle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Half Page')),
      body: Obx(() {
        switch (pageController.selectedIndex.value) {
          case 0:
            return Widget1();
          case 1:
            return Widget2();
          default:
            return Container();
        }
      }),
    );
  }
}
