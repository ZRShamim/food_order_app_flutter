import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';

class PersonalInfoCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 180,
        width: double.infinity,
        color: white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.network(
                  'https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png'),
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
                const Text(
                  'Thelma Sara-bear',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'thelma_sara-bear@gmail.com',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Divider(
                  color: grey,
                ),
                const Text(
                  '+233 54138989',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Divider(
                  color: grey,
                ),
                const Text(
                  'Trasaco hotel, behind navrongo campus',
                  style: TextStyle(
                    fontSize: 13,
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