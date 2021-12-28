import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/services/api_service.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {
  var offerList = <Offer>[].obs;
  var loading = true.obs;

  @override
  void onInit() {
    fetchOffers();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchOffers() async {
    loading(true);
    try {
      var food = await ApiService.fetchFoodInfo();
      if (food != null) {
        offerList.value = food.offers;
      }
    } finally {
      loading(false);
    }
  }
}
