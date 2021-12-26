import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
  FoodController foodController = Get.find();
  FoodCard({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            top: 50,
            width: 300,
            height: 250,
            child: Container(
              color: white,
            ),
          ),
          Positioned(
            child: SizedBox(
              height: 125,
              width: 125,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  foodController.foodList[index].image,
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            child: SizedBox(
              width: 150,
              child: Text(
                foodController.foodList[index].name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            child: Text(
              'tk ${foodController.foodList[index].price}',
              style: TextStyle(fontSize: 17, color: red),
            ),
          ),
        ],
      ),
    );
  }
}
