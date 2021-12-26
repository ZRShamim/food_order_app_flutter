import 'package:e_commerce_app/view/screens/payment_screen/payment_method_screen.dart';
import 'package:e_commerce_app/view/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_widget/personal_info_card.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Personal details',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: red,
                        fontSize: 15,
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
              ListTile(
                title: const Text(
                  'Orders',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: black,
                  size: 18,
                ),
                onTap: () {
                  Get.to(() => CartScreen());
                },
                tileColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: black,
                  size: 18,
                ),
                onTap: () {
                  Get.to(() => PaymentMethodScreen());
                },
                tileColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'FAQ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: black,
                  size: 18,
                ),
                tileColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: black,
                  size: 18,
                ),
                tileColor: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}