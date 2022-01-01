import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/view/global_widgets/custom_appbar.dart';
import 'package:e_commerce_app/view/global_widgets/custom_drawer.dart';
import 'package:e_commerce_app/view/global_widgets/grid_layout.dart';
import 'package:e_commerce_app/view/global_widgets/shimmer_tile.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomAppbar(),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delecious \nFood For You',
              style: TextStyle(
                fontSize: 34,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 60,
                  color: lightGrey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        const Icon(Icons.search_outlined),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              cursorColor: black,
                              textInputAction: TextInputAction.search,
                              keyboardType: TextInputType.text,
                              onEditingComplete: () {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Obx(
                  () => IconButton(
                    onPressed: foodController.fetchFoodList,
                    icon: foodController.loading.value
                        ? SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                              color: red,
                            ),
                          )
                        : Icon(
                            Icons.refresh,
                            color: red,
                          ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Obx(
                        () => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foodController.categoryList.length,
                          itemBuilder: (_, i) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                foodController.categoryList[i],
                                style: TextStyle(color: red, fontSize: 18),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Obx(
              () => foodController.loading.value
                  ? Expanded(
                      child: ShimmerTile(),
                    )
                  : Expanded(
                      child: GridLayout(
                        foodList: foodController.foodList,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
