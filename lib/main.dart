import 'package:flutter/material.dart';
import 'package:flutter_class/providers/phone_provider.dart';
import 'package:flutter_class/screens/HomeScreen.dart';
import 'package:flutter_class/screens/ModifyScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhoneModel(),
        )
      ],
      child: MyApp()
    )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/add': (_) => ModifyScreen() 
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
