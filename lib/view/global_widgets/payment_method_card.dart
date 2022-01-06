import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentMethodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var activeRadioButtonPayment = 0.obs;

    void changeRadioButtonPaymentValue(var value) {
      activeRadioButtonPayment.value = value;
    }

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
                      groupValue: activeRadioButtonPayment.value,
                      onChanged: (value) {
                        changeRadioButtonPaymentValue(value);
                      },
                      activeColor: red,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: red,
                        child: const Icon(
                          Icons.credit_card_outlined,
                          color: white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Card',
                      style: TextStyle(
                        fontSize: 17.sp,
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
                      groupValue: activeRadioButtonPayment.value,
                      onChanged: (value) {
                        changeRadioButtonPaymentValue(value);
                      },
                      activeColor: red,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: pink,
                        child: const Icon(
                          Icons.account_balance_outlined,
                          color: white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: ScreenUtil().screenWidth * .45,
                      child: Text(
                        'Mobile Banking (Bkash, Nagad, Ucash)',
                        style: TextStyle(
                          fontSize: 17.sp,
                        ),
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
                      groupValue: activeRadioButtonPayment.value,
                      onChanged: (value) {
                        changeRadioButtonPaymentValue(value);
                      },
                      activeColor: red,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: blue,
                        child: const Icon(
                          Icons.attach_money_outlined,
                          color: white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Pay on delivery',
                      style: TextStyle(
                        fontSize: 17.sp,
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
