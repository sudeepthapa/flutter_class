import 'package:flutter/material.dart';
import 'package:flutter_class/screens/HomeScreen.dart';
import 'package:flutter_class/screens/ProfileScreen.dart';
import 'package:flutter_class/screens/SettingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: SettingScreen()
    );
  }
}