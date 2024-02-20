import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/testing/controllerpage.dart';
import 'package:my_portfolio/testing/seconfd.dart';

class PageControlle extends GetxController {
  var selectedIndex = 0.obs;
}

class HomePageTest extends StatelessWidget {
  final PageControlle controller = Get.put(PageControlle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Buttons in the first half of the page

            SecondHalfPage(),
            ElevatedButton(
              onPressed: () => controller.selectedIndex.value = 0,
              child: Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () => controller.selectedIndex.value = 1,
              child: Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}
