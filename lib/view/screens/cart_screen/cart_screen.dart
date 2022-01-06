import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/view/global_widgets/button_widget.dart';
import 'package:e_commerce_app/view/screens/cart_screen/cart_widgets/cart_tile.dart';
import 'package:e_commerce_app/view/screens/checkout_screnn/chekout_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'Cart',
          style: appbarTitleStyle,
        ),
      ),
      body: Obx(
        () => cartController.cartItems.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 200,
                      color: grey,
                    ),
                    Text(
                      'No order yet',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.swipe_outlined),
                        Text('swipe on an item to delete')
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: cartController.cartItems.values.length,
                        itemBuilder: (_, i) {
                          return CartTile(
                              cartItem:
                                  cartController.cartItems.values.toList()[i],
                              keys: cartController.cartItems.keys.toList()[i]);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => CheckOutScreen(), arguments: {
                            "totalAmount": cartController.totalAmount,
                            "orderedItem": cartController.cartItems,
                          });
                        },
                        child: ButtonWidget(title: 'Complete Order'),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
