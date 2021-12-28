import 'package:e_commerce_app/model/food.dart';
import 'package:get/get.dart';

class Cart {
  String id;
  String image;
  String name;
  double price;
  int quantity;

  Cart(
      {required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.quantity});
}
