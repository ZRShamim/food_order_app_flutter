import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/view/global_widgets/food_card.dart';
import 'package:e_commerce_app/view/screens/food_info_screen/food_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridLayout extends StatelessWidget {
  GridLayout({required this.foodList});

  List<FoodList> foodList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: .6,
        crossAxisCount:  2,
        crossAxisSpacing: 10,
      ),
      itemCount: foodList.length,
      itemBuilder: (_, i) {
        return InkWell(
          onTap: () {
            Get.to(
              () => FoodInfo(
                food: foodList[i],
              ),
            );
          },
          child: Padding(
            padding: i.isEven
                ? const EdgeInsets.only(bottom: 20)
                : const EdgeInsets.only(top: 20),
            child: FoodCard(
              food: foodList[i],
            ),
          ),
        );
      },
    );
  }
}
