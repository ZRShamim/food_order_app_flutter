import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/view/global_widgets/custom_appbar.dart';
import 'package:e_commerce_app/view/global_widgets/grid_layout.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your \nFavorite Dishes',
              style: mainTitleStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: foodController.favoriteFood.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ohh snap!  No Favorites Yet',
                            style: TextStyle(
                              fontSize: 28.sp,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GridLayout(
                      foodList: foodController.favoriteFood,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
