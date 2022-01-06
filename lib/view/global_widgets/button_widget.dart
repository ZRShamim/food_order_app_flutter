import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    this.buttonColor = red,
    required this.title,
  });

  String title;
  Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 60,
        color: buttonColor,
        child: Text(
          title,
          style: const TextStyle(
            color: white,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
