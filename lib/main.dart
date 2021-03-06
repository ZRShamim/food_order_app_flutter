import 'package:e_commerce_app/view/screens/landing_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(420, 810),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Order App',
        theme: ThemeData(
          fontFamily: 'Actor',
        ),
        home: LandingScreen(),
      ),
    );
  }
}
