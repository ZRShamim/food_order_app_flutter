import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/controllers/util_controller.dart';
import 'package:e_commerce_app/view/screens/account_screen/account_screen.dart';
import 'package:e_commerce_app/view/screens/history_screen/history_screen.dart';
import 'package:e_commerce_app/view/screens/home_screen/home_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  FoodController foodController = Get.put(FoodController());
  UtilController utilController = Get.put(UtilController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: utilController.bottomTabbarIndex.value,
          children: [
            HomeScreen(),
            const Center(
              child: Text('Star'),
            ),
            AccountScreen(),
            const HistoryScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: utilController.changeTabIndex,
          currentIndex: utilController.bottomTabbarIndex.value,
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: orrange,
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
