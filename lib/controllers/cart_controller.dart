import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/model/food.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final Map<String, Cart> cartItems = <String, Cart>{}.obs;

  void addToCart(String foodId, String name, double price, String image) {
    if (cartItems.containsKey(foodId)) {
      print('Added Previously');
    } else {
      cartItems.putIfAbsent(foodId, () {
        return Cart(
            id: DateTime.now().toString(),
            image: image,
            name: name,
            price: price);
      });
    }
  }
}
