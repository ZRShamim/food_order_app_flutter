import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/model/order.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  List<Order> orderFoodList = <Order>[].obs;

  void addOrders(List<Cart> cartFood, double totalAmount) {
    orderFoodList.insert(
      0,
      Order(
          id: DateTime.now().toString(),
          date: DateTime.now(),
          foodList: cartFood,
          totalAmount: totalAmount),
    );
  }
}
