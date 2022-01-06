import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartTile extends StatelessWidget {
  CartController cartController = Get.find();

  CartTile({
    required this.cartItem,
    required this.keys,
  });

  final Cart cartItem;
  final String keys;

  @override
  Widget build(BuildContext context) {
    var isMobileSizeMedium = ScreenUtil().screenWidth < 380;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 80,
          color: white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: isMobileSizeMedium ? 60.sp : 80,
                  width: isMobileSizeMedium ? 60.sp : 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      cartItem.image,
                    ),
                  ),
                ),
              ),
            
              SizedBox(
                width: ScreenUtil().screenWidth * .35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 17.sp),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'tk ${cartItem.price}',
                      style: TextStyle(fontSize: 15.sp, color: red),
                    ),
                  ],
                ),
              ),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150.sm,
                  height: 35,
                  color: red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (cartItem.quantity > 1) {
                            cartController.removeQuantity(keys);
                          } else {
                            cartItem.quantity = 1;
                          }
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 15.sm,
                        ),
                      ),
                      Text(
                        '${cartItem.quantity}',
                        style: TextStyle(fontSize: 14.sm),
                      ),
                      IconButton(
                        onPressed: () {
                          cartController.addQuantity(keys);
                        },
                        icon: Icon(
                          Icons.add,
                          size: 15.sm,
                        ),
                      ),
                    ],
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
