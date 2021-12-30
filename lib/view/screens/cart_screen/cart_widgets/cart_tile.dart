import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartTile extends StatelessWidget {

  CartController cartController = Get.find();
  
  CartTile({
    required this.cartItem,
    required this.keys,
  });

  final Cart cartItem;
  final String keys;

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    cartItem.image,
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.name,
                      style: const TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'tk ${cartItem.price}',
                      style: TextStyle(fontSize: 15, color: red),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (cartItem.quantity > 1) {
                            cartController.removeQuantity(keys);
                          } else {
                            cartItem.quantity = 1;
                          }
                        },
                        icon: const Icon(
                          Icons.remove,
                          size: 13,
                        ),
                      ),
                      Text(
                        '${cartItem.quantity}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          cartController.addQuantity(keys);
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
  }
}