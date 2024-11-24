import 'package:get/get.dart';

class IndexController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<int> numbers = [0, 1, 2, 3].obs;
  void rearrangeList(int selectedNumber) {
    numbers.remove(selectedNumber);
    numbers.insert(0, selectedNumber);
    List<int> sublistCopy = List<int>.from(numbers.sublist(1))..sort();
    for (int i = 1; i < numbers.length; i++) {
      numbers[i] = sublistCopy[i - 1];
    }
  }
}
