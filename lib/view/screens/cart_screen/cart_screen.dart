import 'package:e_commerce_app/view/screens/checkout_screnn/chekout_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
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
      body:
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Icon(
          //         Icons.shopping_cart_outlined,
          //         size: 200,
          //         color: grey,
          //       ),
          //       const Text(
          //         'No order yet',
          //         style: TextStyle(fontSize: 28),
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
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
                itemCount: 4,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        height: 110,
                        color: white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              height: 80,
                              width: 80,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://www.thespruceeats.com/thmb/vJUFf6L4p8y9Cn_1pE9Z7Ua9uok=/3000x2001/filters:fill(auto,1)/indian-style-burger-1957599-hero-01-266103a4bb4e4ee7b5feb4da2d2e99da.jpg',
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Cheese Burger',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Tk 120',
                                  style: TextStyle(fontSize: 15, color: red),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 105,
                                height: 30,
                                color: red,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.remove,
                                        size: 13,
                                      ),
                                    ),
                                    const Text(
                                      '1',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      onPressed: () {},
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
                  Get.to(() => CheckOutScreen());
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
