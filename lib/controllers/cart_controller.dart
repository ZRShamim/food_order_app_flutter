import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final Map<String, Cart> cartItems = <String, Cart>{}.obs;

  void addToCart(String foodId, String name, double price, String image) {
    if (cartItems.containsKey(foodId)) {
      Get.snackbar('Already Added', 'Go to cart page to confirm your order',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: black.withOpacity(0.75),
          colorText: white);
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
