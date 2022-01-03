import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/services/api_service.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  var foodList = <FoodList>[].obs;
  var categoryList = <String>[].obs;
  var tagList = <String>[].obs;
  // var favFoodList = <FoodList>[].obs;

  var loading = true.obs;

  @override
  void onInit() {
    fetchFoodList();
    super.onInit();
  }

  Future<void> fetchFoodList() async {
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

  List<FoodList> get favoriteFood {
    return foodList.where((food) => food.isFav == true).toList();
  }

  void toggleAddToCart(String foodId) {
    foodList.firstWhere((element) => element.foodId == foodId).isAddedToCart =
        !foodList
            .firstWhere((element) => element.foodId == foodId)
            .isAddedToCart;
    update();
  }

  void toggleFavFood(FoodList food) {
    food.isFav = !food.isFav;
    update();
  }
}
