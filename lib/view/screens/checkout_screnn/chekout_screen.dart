import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/controllers/order_controller.dart';
import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/view/global_widgets/payment_method_card.dart';
import 'package:e_commerce_app/view/global_widgets/personal_info_card.dart';
import 'package:e_commerce_app/view/screens/account_screen/account_screen.dart';
import 'package:e_commerce_app/view/screens/landing_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatelessWidget {
  OrderController orderController = Get.find();
  CartController cartController = Get.find();
  FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    var activeRadioButtonDelivery = 0.obs;

    void changeRadioButtonDeliveryValue(var value) {
      activeRadioButtonDelivery.value = value;
    }

    var foodIds = cartController.cartItems.keys.toList();

    double totalAmount = Get.arguments['totalAmount'];
    Map<String, Cart> orderedItem = Get.arguments['orderedItem'];
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: appbarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Address Details',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: red,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {
                      Get.to(() => AccountScreen());
                    },
                  ),
                ],
              ),
              PersonalInfoCard(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                    child: Text(
                      'Update information',
                      style: TextStyle(
                        color: red,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              PaymentMethodCard(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Delivery Method',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: white,
                  child: Obx(
                    () => Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 0,
                                groupValue: activeRadioButtonDelivery.value,
                                onChanged: (value) {
                                  changeRadioButtonDeliveryValue(value);
                                },
                                activeColor: red,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Door Delivery',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: activeRadioButtonDelivery.value,
                                onChanged: (value) {
                                  changeRadioButtonDeliveryValue(value);
                                },
                                activeColor: red,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Pick up',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'tk $totalAmount',
                    style: const TextStyle(fontSize: 26),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: InkWell(
                  onTap: () {
                    Get.defaultDialog(
                        title: 'Please Note',
                        content: Column(
                          children: [
                            const Text('Ordered Item'),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(),
                            for (var i = 0; orderedItem.values.length > i; i++)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: Text(
                                          orderedItem.values.toList()[i].name)),
                                  Text(
                                      'x ${orderedItem.values.toList()[i].quantity}')
                                ],
                              ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text('Total Price'),
                                Text('tk $totalAmount'),
                              ],
                            ),
                          ],
                        ),
                        onConfirm: () {
                          orderController.addOrders(
                              orderedItem.values.toList(), totalAmount);
                          cartController.clearCart();
                          for (var i = 0; i < foodIds.length; i++) {
                            foodController.toggleAddToCart(foodIds[i]);
                          }
                          // Get.delete<CartController>();
                          Get.offAll(() => LandingScreen());
                        },
                        onCancel: () {},
                        textConfirm: 'Order Now',
                        confirmTextColor: black);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      height: 60,
                      color: red,
                      child: Text(
                        'Check Out',
                        style: TextStyle(
                          color: white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
