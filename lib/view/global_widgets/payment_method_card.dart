import 'package:e_commerce_app/controllers/util_controller.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodCard extends StatelessWidget {
  
  UtilController utilController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
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
                      groupValue: utilController.activeRadioButtonPayment.value,
                      onChanged: (value) {
                        utilController.changeRadioButtonPaymentValue(value);
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
                      groupValue: utilController.activeRadioButtonPayment.value,
                      onChanged: (value) {
                        utilController.changeRadioButtonPaymentValue(value);
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
                      groupValue: utilController.activeRadioButtonPayment.value,
                      onChanged: (value) {
                        utilController.changeRadioButtonPaymentValue(value);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}