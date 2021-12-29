import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/view/screens/food_info_screen/food_info_screen.dart';
import 'package:e_commerce_app/view/screens/home_screen/home_widgets/food_card.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your \nFavorite Dishes',
              style: TextStyle(
                fontSize: 34,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: foodController.favoriteFood.isEmpty? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('ohh snap!  No Favorites Yet', style: TextStyle(fontSize: 28,),),
                ],
              ),
              ) : Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .6,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: foodController.favoriteFood.length,
                  itemBuilder: (_, i) {
                    if (i.isEven) {
                      return InkWell(
                        onTap: () {
                          Get.to(
                            () => FoodInfo(
                              food: foodController.favoriteFood[i],
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: FoodCard(food: foodController.favoriteFood[i],),
                        ),
                      );
                    } else {
                      return InkWell(
                        onTap: () {
                          Get.to(
                            () => FoodInfo(
                              food: foodController.favoriteFood[i],
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: FoodCard(food: foodController.favoriteFood[i]),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
