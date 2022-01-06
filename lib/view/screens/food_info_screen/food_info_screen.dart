import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/view/global_widgets/button_widget.dart';
import 'package:e_commerce_app/view/screens/landing_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodInfo extends StatelessWidget {
  FoodController foodController = Get.find();
  CartController cartController = Get.find();

  FoodInfo({required this.food});

  FoodList food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => LandingScreen());
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          GetBuilder<FoodController>(
            builder: (_) {
              return IconButton(
                onPressed: () {
                  return foodController.toggleFavFood(food);
                },
                icon: Icon(
                  food.isFav ? Icons.favorite : Icons.favorite_outline,
                  color: red,
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 180,
                        width: 180,
                        child: CircleAvatar(
                          backgroundColor: white,
                          backgroundImage: NetworkImage(
                            food.image,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text(
                        food.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        'tk ${food.price}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          color: red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              const Text(
                'Delivery info',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 320,
                child: Text(
                  'Delivered between monday aug and thursday 20 from 8pm to 09:32 pm',
                  style: TextStyle(fontSize: 18, color: grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Return policy',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 320,
                child: Text(
                  'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                  style: TextStyle(fontSize: 18, color: grey),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GetBuilder<FoodController>(
                init: FoodController(),
                builder: (_) {
                  return Center(
                    child: InkWell(
                      onTap: food.isAddedToCart
                          ? () {}
                          : () {
                              cartController.addToCart(food.foodId, food.name,
                                  food.price, food.image);
                              foodController.toggleAddToCart(food.foodId);
                            },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ButtonWidget(
                          title: food.isAddedToCart ? 'Added' : 'Add to cart',
                          buttonColor: food.isAddedToCart ? black : red,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
