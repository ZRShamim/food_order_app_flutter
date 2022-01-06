import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:e_commerce_app/view/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var isMobileSizeLarge = ScreenUtil().screenWidth > 400;

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 180,
        color: white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox(
                width:isMobileSizeLarge? 150 : 120,
                child: Image.network(
                    'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: ScreenUtil().screenWidth * .5,
                  child: Text(
                    'Md. Ziuar Rahman Shamim',
                    style: TextStyle(
                      fontSize: isTabletSize? 22 : 18.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().screenWidth * .5,
                  child: Text(
                    'thelma_sara-bear@gmail.com',
                    style: TextStyle(
                      fontSize:isTabletSize? 16 : 13.sp,
                    ),
                  ),
                ),
                const Divider(
                  color: grey,
                ),
                SizedBox(
                  width: ScreenUtil().screenWidth * .5,
                  child: Text(
                    '+233 54138989',
                    style: TextStyle(
                      fontSize:isTabletSize? 17 : 15.sp,
                    ),
                  ),
                ),
                const Divider(
                  color: grey,
                ),
                SizedBox(
                  width: ScreenUtil().screenWidth * .5,
                  child: Text(
                    'Trasaco hotel, behind navrongo campus',
                    style: TextStyle(
                      fontSize: isTabletSize? 16 : 13.sp,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
