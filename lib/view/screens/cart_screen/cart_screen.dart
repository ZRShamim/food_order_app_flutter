import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: black
        ),
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'Orders',
          style: TextStyle(
            color: black,
          ),
        ),
      ),
      body: Center(
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
      ),
    );
  }
}