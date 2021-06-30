import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;

  CustomButton({Key? key, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("I clicked.");
      },
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 40,
        color: Colors.greenAccent,
        child: Text(title!),
      ),
    );
  }
}
