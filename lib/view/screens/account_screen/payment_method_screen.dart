import 'package:e_commerce_app/controllers/util_controller.dart';
import 'package:e_commerce_app/view/screens/account_screen/account_widget/personal_info_card.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatelessWidget {
  UtilController utilController = Get.find();

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
              height: 40,
            ),
            const Text(
              'Payment Method',
              style: TextStyle(fontSize: 17),
            ),
            Container(
              color: white,
              child: Obx(
                () => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: utilController.activeRadioButton.value,
                            onChanged: (value) {
                              utilController.changeRadioButtonValue(value);
                            },
                            activeColor: red,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: red,
                              child: Icon(
                                Icons.credit_card_outlined,
                                color: white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Card',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: utilController.activeRadioButton.value,
                            onChanged: (value) {
                              utilController.changeRadioButtonValue(value);
                            },
                            activeColor: red,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: pink,
                              child: Icon(
                                Icons.account_balance_outlined,
                                color: white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Mobile Banking (Bkash, Nagad, ...)',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: utilController.activeRadioButton.value,
                            onChanged: (value) {
                              utilController.changeRadioButtonValue(value);
                            },
                            activeColor: red,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: blue,
                              child: Icon(
                                Icons.attach_money_outlined,
                                color: white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Pay on delivery',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            alignment: Alignment.center,
                            width: 250,
                            height: 60,
                            color: red,
                            child: Text('Update Information', style: TextStyle(
                              color: white,
                              fontSize: 17,
                            ),),
                          ),
                        ),
                      ),
                    ],
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
