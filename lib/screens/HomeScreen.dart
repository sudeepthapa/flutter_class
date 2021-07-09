import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    List<Widget> lists = [
      Container(color: Colors.red, width: deviceWidth / 3, height: 200),
      Container(color: Colors.yellow, width: deviceWidth / 3, height: 200),
      Container(color: Colors.green, width: deviceWidth / 3, height: 200),
    ];

    if (deviceWidth < 320) {
      lists = [
        Container(color: Colors.red, width: deviceWidth / 2, height: 200),
        Container(color: Colors.yellow, width: deviceWidth / 2, height: 200),
      ];
    }

    return Scaffold(
      body: Row(
        children: [
          ...lists
        ],
      ),
    );
  }
}
