import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/view/global_widgets/custom_appbar.dart';
import 'package:e_commerce_app/view/global_widgets/custom_drawer.dart';
import 'package:e_commerce_app/view/global_widgets/grid_layout.dart';
import 'package:e_commerce_app/view/global_widgets/shimmer_tile.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    print(ScreenUtil().screenWidth);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomAppbar(),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delecious \nFood For You',
              style: mainTitleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchBox(),
            const SizedBox(
              height: 10,
            ),
            CategorySlider(foodController: foodController),
            const SizedBox(
              height: 10,
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

class CategorySlider extends StatelessWidget {
  const CategorySlider({
    Key? key,
    required this.foodController,
  }) : super(key: key);

  final FoodController foodController;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            height: isTabletSize ? 22 : 20.sp,
            child: Obx(
              () => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodController.categoryList.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      foodController.categoryList[i],
                      style: TextStyle(
                          color: red, fontSize: isTabletSize ? 22 : 19.sp),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 45,
        color: lightGrey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_outlined,
                size: 22,
                color: grey,
              ),
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
    );
  }
}
