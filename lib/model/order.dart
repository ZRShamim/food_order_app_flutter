import 'package:e_commerce_app/model/food.dart';

class Order {
  Order({
    required this.id,
    required this.date,
    required this.orderList,
    required this.totalAmount,
  });

  var id;
  DateTime date;
  List<FoodList> orderList;
  double totalAmount;
}
