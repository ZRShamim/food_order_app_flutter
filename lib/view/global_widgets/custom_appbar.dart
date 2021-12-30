import 'package:e_commerce_app/view/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notes_outlined,
            color: black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => CartScreen());
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: black,
            ),
          ),
        ],
      );
  }
}