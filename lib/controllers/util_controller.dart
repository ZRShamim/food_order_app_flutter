import 'package:get/get.dart';

class UtilController extends GetxController {
  var bottomTabbarIndex = 0.obs;

  void changeTabIndex(int index) {
    bottomTabbarIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}