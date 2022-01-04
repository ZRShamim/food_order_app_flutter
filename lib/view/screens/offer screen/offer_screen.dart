import 'package:e_commerce_app/controllers/offers_controller.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OfferScreen extends StatelessWidget {
  OfferController offerController = Get.put(OfferController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        iconTheme: IconThemeData(color: black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My offers',
              style: TextStyle(
                fontSize: 34.sp,
              ),
            ),
            offerController.offerList.isNotEmpty ? SizedBox(
              height: MediaQuery.of(context).size.height * .75,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('ohh snap!  No offers yet', style: TextStyle(fontSize: 28,),),
                  Text(' please check again.', style: TextStyle(fontSize: 17, color: grey),),
                ],
              ),
            ) : const Text('data') 
          ],
        ),
      ),
    );
  }
}
