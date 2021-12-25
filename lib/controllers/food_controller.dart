import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/services/api_service.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  var foodList = <FoodList>[].obs;
  var categoryList = <String>[].obs;
  var tagList = <String>[].obs;

  var loading = true.obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    loading(true);
    try {
      var foodInfo = await ApiService.fetchFoodInfo();
      if (foodInfo != null) {
        foodList.value = foodInfo.foodList;
        categoryList.value = foodInfo.categoryList;
        tagList.value = foodInfo.tagList;
      }
    } finally {
      loading(false);
    }
  }
}
