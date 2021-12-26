import 'package:get/get.dart';

class UtilController extends GetxController {
  var bottomTabbarIndex = 0.obs;

  var activeRadioButton = 0.obs;

  void changeTabIndex(int index) {
    bottomTabbarIndex.value = index;
  }

  void changeRadioButtonValue(var value) {
    activeRadioButton.value = value;
  }
}
