import 'package:e_commerce_app/controllers/food_controller.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodInfo extends StatelessWidget {
  FoodController foodController = Get.put(FoodController());

  FoodInfo({required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        elevation: 0,
        backgroundColor: bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          foodController.foodList[index].image,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 350,
                      child: Text(
                        foodController.foodList[index].name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        'tk ${foodController.foodList[index].price}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              const Text(
                'Delivery info',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 320,
                child: Text(
                  'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                  style: TextStyle(fontSize: 18, color: grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Return policy',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 320,
                child: Text(
                  'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                  style: TextStyle(fontSize: 18, color: grey),
                ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 60,
                        color: red,
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            color: white,
                            fontSize: 17,
                          ),
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