import 'package:flutter/material.dart';
import 'package:flutter_class/widgets/CustomButton.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(title: 'Button One'),
            SizedBox(height: 20),
            CustomButton(title: 'Button Two'),
          ],
        )
      ),
    );
  }
}