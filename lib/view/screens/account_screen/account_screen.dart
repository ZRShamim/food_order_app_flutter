import 'package:e_commerce_app/view/global_widgets/custom_appbar.dart';
import 'package:e_commerce_app/view/global_widgets/personal_info_card.dart';
import 'package:e_commerce_app/view/screens/offer%20screen/offer_screen.dart';
import 'package:e_commerce_app/view/screens/payment_screen/payment_method_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Profile',
                style: mainTitleStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal details',
                    style: TextStyle(
                      fontSize: 17.sp,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: red,
                        fontSize: 15.sp,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              PersonalInfoCard(),
              const SizedBox(
                height: 20,
              ),
              AccountTabListTile(
                  title: 'Offers',
                  routeFunction: () {
                    Get.to(() => OfferScreen());
                  }),
              const SizedBox(
                height: 20,
              ),
              AccountTabListTile(
                title: 'Payment Method',
                routeFunction: () {
                  Get.to(() => PaymentMethodScreen());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              AccountTabListTile(
                title: 'FAQ',
                routeFunction: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: AccountTabListTile(
                  title: 'Help',
                  routeFunction: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountTabListTile extends StatelessWidget {
  AccountTabListTile({
    required this.title,
    required this.routeFunction,
  });
  String title;
  Function() routeFunction;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: isTabletSize? 20 : 18.sp,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: black,
        size: isTabletSize? 18 : 18.sp,
      ),
      onTap: routeFunction,
      tileColor: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
