import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                width: 150,
                child: 
                Image.network(
                    'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    'Md. Ziuar Rahman Shamim',
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    'thelma_sara-bear@gmail.com',
                    style: TextStyle(
                      fontSize: 13.sp,
                    ),
                  ),
                ),
                Divider(
                  color: grey,
                ),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    '+233 54138989',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Divider(
                  color: grey,
                ),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    'Trasaco hotel, behind navrongo campus',
                    style: TextStyle(
                      fontSize: 13.sp,
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
