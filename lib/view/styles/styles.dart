import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle mainTitleStyle = TextStyle(
  fontSize: isTabletSize? 32 : 28.sp,
);

TextStyle appbarTitleStyle = TextStyle(
  fontSize: isTabletSize? 24 : 20.sp,
  color: black,
);

var isTabletSize = ScreenUtil().screenWidth > 700;
