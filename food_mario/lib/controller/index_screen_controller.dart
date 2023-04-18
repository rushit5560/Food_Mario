import 'package:get/get.dart';

class IndexScreenController extends GetxController {
  var selectedIndex = 0.obs;
  changeIndex(int index) {
    selectedIndex.value = index;
  }
}
