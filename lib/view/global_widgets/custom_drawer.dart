import 'package:e_commerce_app/view/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/view/screens/offer%20screen/offer_screen.dart';
import 'package:e_commerce_app/view/screens/payment_screen/payment_method_screen.dart';
import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: red,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            DrawerTile(
              title: 'Profile',
              icon: Icons.account_circle_outlined,
              routePAth: PaymentMethodScreen(),
            ),
            const Divider(
              color: white,
            ),
            DrawerTile(
              title: 'Orders',
              icon: Icons.shopping_cart_outlined,
              routePAth: CartScreen(),
            ),
            const Divider(
              color: white,
            ),
            DrawerTile(
              title: 'Offer and promo',
              icon: Icons.local_offer_outlined,
              routePAth: OfferScreen(),
            ),
            const Divider(
              color: white,
            ),
            DrawerTile(
              title: 'Privacy policy',
              icon: Icons.description_outlined,
            ),
            const Divider(
              color: white,
            ),
            DrawerTile(
              title: 'Security',
              icon: Icons.security_outlined,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text('Sign-Out', 
                    style: TextStyle(
                      color: white,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward, color: white,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  DrawerTile({
    required this.title,
    required this.icon,
    this.routePAth,
  });

  String title;
  IconData icon;
  var routePAth;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: white,
      ),
      title: Text(
        title,
        style: const TextStyle(color: white, fontSize: 20),
      ),
      trailing: IconButton(
        onPressed: () {
          if(routePAth != null){
            Get.to(routePAth);
          }
        },
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: white,
          size: 16,
        ),
      ),
    );
  }
}
