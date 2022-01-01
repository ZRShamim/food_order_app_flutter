import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/controllers/offers_controller.dart';
import 'package:e_commerce_app/controllers/order_controller.dart';
import 'package:e_commerce_app/controllers/util_controller.dart';
import 'package:e_commerce_app/view/screens/account_screen/account_screen.dart';
import 'package:e_commerce_app/view/screens/favorite_screen/favorite_screen.dart';
import 'package:e_commerce_app/view/screens/history_screen/history_screen.dart';
import 'package:e_commerce_app/view/screens/home_screen/home_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  FoodController foodController = Get.put(FoodController());
  CartController cartController = Get.put(CartController());
  OfferController offerController = Get.put(OfferController());
  OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    var bottomTabbarIndex = 0.obs;

    void changeTabIndex(int index) {
      bottomTabbarIndex.value = index;
    }

    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: bottomTabbarIndex.value,
          children: [
            HomeScreen(),
            FavoriteScreen(),
            AccountScreen(),
            HistoryScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: changeTabIndex,
          currentIndex: bottomTabbarIndex.value,
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: red,
          unselectedItemColor: grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
