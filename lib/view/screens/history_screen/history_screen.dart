import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'History',
          style: TextStyle(color: black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.event_note_outlined,
              size: 200,
              color: grey,
            ),
            const Text(
              'No history yet',
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
