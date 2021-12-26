import 'dart:ui';

import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/controllers/util_controller.dart';
import 'package:e_commerce_app/view/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
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
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Obx(() => ListView.builder(
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
                    })),
              ),
            ),
            Expanded(
              child: Obx(
                () => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: .6,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: foodController.foodList.length,
                    itemBuilder: (_, i) {
                      if (i.isEven) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
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
                                        foodController.foodList[i].image,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ClipRRect(
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
                                        foodController.foodList[i].image,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
