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
            price: price,
            quantity: 1);
      });
    }
  }

  void addQuantity(String foodId) {
    if (cartItems.containsKey(foodId)) {
      cartItems.update(
        foodId,
        (excistingValue) => Cart(
          id: excistingValue.id,
          image: excistingValue.image,
          name: excistingValue.name,
          price: excistingValue.price,
          quantity: excistingValue.quantity + 1,
        ),
      );
    }
  }

  void removeQuantity(String foodId) {
    if (cartItems.containsKey(foodId)) {
      cartItems.update(
        foodId,
        (excistingValue) => Cart(
          id: excistingValue.id,
          image: excistingValue.image,
          name: excistingValue.name,
          price: excistingValue.price,
          quantity: excistingValue.quantity - 1,
        ),
      );
    }
  }

  double get totalAmount {
    var total = 0.0;
    cartItems.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void clearCart() {
    cartItems.clear();
  }
}
