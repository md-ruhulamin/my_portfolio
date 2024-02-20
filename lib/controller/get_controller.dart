import 'package:get/get.dart';

class MyController extends GetxController {
  RxInt sIndex = 0.obs;
  void updateSelectedButtonIndex(int i) {
    sIndex.value = i;
    update();
  }
  int get Index => sIndex.value;


  var count = 0;
  void increment() {
    count++;
    update();
  }

  int selectedIndex = 0;
  void setselectedIndex(int value) {
    selectedIndex = value;
  }

  int getSelectedIndex() {
    return selectedIndex;
  }
}
