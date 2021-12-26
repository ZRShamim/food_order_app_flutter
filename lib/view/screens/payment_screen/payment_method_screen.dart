import 'package:e_commerce_app/controllers/util_controller.dart';
import 'package:e_commerce_app/view/global_widgets/payment_method_card.dart';
import 'package:e_commerce_app/view/global_widgets/personal_info_card.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(color: black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Information',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            PersonalInfoCard(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                    child: Text(
                      'Update information',
                      style: TextStyle(
                        color: red,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {},
                  ),
              ],
            ),
            PaymentMethodCard(),
          ],
        ),
      ),
    );
  }
}


