import 'package:e_commerce_app/model/cart.dart';

class Order {
  Order({
    required this.id,
    required this.date,
    required this.foodList,
    required this.totalAmount,
  });

  String id;
  DateTime date;
  List<Cart> foodList;
  double totalAmount;
}
