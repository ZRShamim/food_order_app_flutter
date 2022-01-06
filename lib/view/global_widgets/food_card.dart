import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/model/food.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class FoodCard extends StatelessWidget {
  FoodController foodController = Get.find();
  FoodCard({required this.food});

  final FoodList food;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
          top: 40,
          child: Container(
            color: white,
            width: 300,
            height: 500,//work_to_do: at certain point it will not increase or decrease
          ),
        ),
        Column(
          children: [
            SizedBox(
              width: isTabletSize? 120 : 100.w,//work_to_do: at certain point it will not increase or decrease
              height: isTabletSize? 120 : 100.w,//work_to_do: at certain point it will not increase or decrease
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  food.image,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 120,
              height: 70,
              child: Text(
                food.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isTabletSize? 22 : 20.sp,
                ),
              ),
            ),
            Text(
              'tk ${food.price}',
              style: TextStyle(fontSize: isTabletSize? 20 : 17.sp, color: red),
            )
          ],
        )
      ],
    );
  }
}
