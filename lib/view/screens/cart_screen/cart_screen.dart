import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/view/screens/checkout_screnn/chekout_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
            color: black,
          ),
        ),
      ),
      body: cartController.cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 200,
                    color: grey,
                  ),
                  const Text(
                    'No order yet',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                        return Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              height: 110,
                              color: white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        cartController.cartItems.values
                                            .toList()[i]
                                            .image,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartController.cartItems.values
                                              .toList()[i]
                                              .name,
                                          style: const TextStyle(fontSize: 17),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'tk ${cartController.cartItems.values.toList()[i].price}',
                                          style: TextStyle(
                                              fontSize: 15, color: red),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      width: 105,
                                      height: 30,
                                      color: red,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (cartController
                                                      .cartItems.values
                                                      .toList()[i]
                                                      .quantity >
                                                  1) {
                                                cartController.removeQuantity(
                                                    cartController
                                                        .cartItems.keys
                                                        .toList()[i]);
                                              } else {
                                                cartController.cartItems.values
                                                    .toList()[i]
                                                    .quantity = 1;
                                              }
                                            },
                                            icon: const Icon(
                                              Icons.remove,
                                              size: 13,
                                            ),
                                          ),
                                          Obx(
                                            () => Text(
                                              '${cartController.cartItems.values.toList()[i].quantity}',
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              cartController.addQuantity(
                                                  cartController.cartItems.keys
                                                      .toList()[i]);
                                            },
                                            icon: const Icon(
                                              Icons.add,
                                              size: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: InkWell(
                      onTap: () {
                        if (cartController.cartItems.isNotEmpty) {
                          Get.to(() => CheckOutScreen(), arguments: {
                            "totalAmount" : cartController.totalAmount,
                            "orderedItem" : cartController.cartItems,
                          });
                        } else {
                          Get.defaultDialog(
                            title: 'Empty Cart',
                            middleText:
                                'PLease add some food in cart then proceed',
                            textCancel: 'Ok',
                          );
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          height: 60,
                          color: red,
                          child: Text(
                            'Complete Order',
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
    );
  }
}
