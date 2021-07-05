import 'package:flutter/material.dart';
import 'package:flutter_class/constants/routes.dart';
import 'package:flutter_class/screens/ContactScreen.dart';
import 'package:flutter_class/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Routes.home,
      // routes: Routes.getRoutes(),
      onGenerateRoute: (RouteSettings settings){
        final args = settings.arguments as Map<String, dynamic>?;
        final routeName = settings.name;

        switch(routeName){
          case Routes.home:
            return MaterialPageRoute(builder: (_) => HomePage());
          case Routes.contact:
            return MaterialPageRoute(builder: (_) => ContactScreen(arguments: args));
          default:
            return MaterialPageRoute(builder: (_) => Scaffold(
              body: Center(
                child: Text("PAGE NOT FOUND.")
              ),
            ));
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// Form Elements
// TODO:: Research and Implement all the form elements mentioned below.
    // Input Decoration
    // Text decoration
    // Validation !important

// input
// number
// password
// textarea
// checkbox
// radio
// switch
// dropdown
// Keyboardtype // I will cover
// Validation

