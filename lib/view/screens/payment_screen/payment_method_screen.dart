import 'package:e_commerce_app/view/global_widgets/payment_method_card.dart';
import 'package:e_commerce_app/view/global_widgets/personal_info_card.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme:const IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: appbarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Information',
              style: TextStyle(fontSize: 17.sp),
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
                Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 17.sp),
                ),
                TextButton(
                    child: Text(
                      'Update information',
                      style: TextStyle(
                        color: red,
                        fontSize: 15.sp,
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


