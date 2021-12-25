import 'package:e_commerce_app/view/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/screens/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Order App',
      theme: ThemeData(
        fontFamily: 'Actor',
      ),
      home: LandingScreen(),
    );
  }
}
