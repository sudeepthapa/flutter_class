import 'package:flutter/material.dart';
import 'package:flutter_class/constants/routes.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Routes.home,
      routes: Routes.getRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
