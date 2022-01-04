import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/view/global_widgets/food_card.dart';
import 'package:e_commerce_app/view/screens/food_info_screen/food_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GridLayout extends StatelessWidget {
  GridLayout({required this.foodList});

  List<FoodList> foodList;

  @override
  Widget build(BuildContext context) {
    var screenWidth = ScreenUtil().screenWidth;
    var aspectRatio = screenWidth <= 370
        ? screenWidth <= 280
            ? 0.45
            : 0.6
        : 0.7;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: aspectRatio,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10),
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
                ? const EdgeInsets.only(top: 20)
                : const EdgeInsets.only(bottom: 20),
            child: FoodCard(
              food: foodList[i],
            ),
          ),
        );
      },
    );
  }
}
