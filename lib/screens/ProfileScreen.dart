import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String text = "HELLO WORLD";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          renderText(text),
        ],
      )),
    );
  }

  Widget renderText(String abc) {
    return Container(
      child: Center(
        child: Text(abc),
      ),
    );
  }
}
