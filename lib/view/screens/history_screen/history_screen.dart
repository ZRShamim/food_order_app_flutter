import 'dart:math';
import 'package:e_commerce_app/controllers/order_controller.dart';
import 'package:e_commerce_app/model/order.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatelessWidget {
  OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgColor,
          centerTitle: true,
          title: Text(
            'History',
            style: appbarTitleStyle,
          ),
        ),
        body: orderController.orderFoodList.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.event_note_outlined,
                      size: 200,
                      color: grey,
                    ),
                    Text(
                      'No history yet',
                      style: TextStyle(fontSize: 28.sp),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: orderController.orderFoodList.length,
                itemBuilder: (_, i) {
                  return OrderTile(order: orderController.orderFoodList[i]);
                },
              ));
  }
}

class OrderTile extends StatelessWidget {
  OrderTile({
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    var _expanded = false.obs;
    return Obx(
      () => Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text('tk ${order.totalAmount}'),
              subtitle:
                  Text(DateFormat('dd/MM/yyyy').add_jms().format(order.date)),
              trailing: IconButton(
                onPressed: () {
                  _expanded.value = !_expanded.value;
                },
                icon: Icon(
                  _expanded.value ? Icons.expand_less : Icons.expand_more,
                ),
              ),
            ),
            if (_expanded.value)
              SizedBox(
                height: min(order.foodList.length * 20 + 30, 100),
                child: ListView.builder(
                  itemCount: order.foodList.length,
                  itemBuilder: (_, i) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 170,
                          child: Text(
                            order.foodList[i].name,
                          ),
                        ),
                        Text(
                            '${order.foodList[i].quantity} x ${order.foodList[i].price}'),
                      ],
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
