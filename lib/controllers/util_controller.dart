import 'package:get/get.dart';

class UtilController extends GetxController {
  var bottomTabbarIndex = 0.obs;

  var activeRadioButtonPayment = 0.obs;
  var activeRadioButtonDelivery = 0.obs;

  void changeTabIndex(int index) {
    bottomTabbarIndex.value = index;
  }

  void changeRadioButtonPaymentValue(var value) {
    activeRadioButtonPayment.value = value;
  }

  void changeRadioButtonDeliveryValue(var value) {
    activeRadioButtonDelivery.value = value;
  }
}
