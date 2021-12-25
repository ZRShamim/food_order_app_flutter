import 'package:e_commerce_app/model/food.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

    static Future<Food?> fetchFoodInfo() async {
    var response = await client.get(
        Uri.parse('https://raw.githubusercontent.com/ZRShamim/food_order_app_flutter/main/lib/model/food.json'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return foodFromJson(jsonString);
    } else {
    }
  }
}
