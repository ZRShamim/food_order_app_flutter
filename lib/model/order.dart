import 'package:e_commerce_app/model/food.dart';

class Order {
  Order({
    required this.id,
    required this.orderList,
    required this.totalAmount,
  });

  var id;
  List<FoodList> orderList;
  double totalAmount;
}
