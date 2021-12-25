import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './view/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Order App',
      theme: ThemeData(
        fontFamily: 'Actor',
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
