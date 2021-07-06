import 'package:flutter/material.dart';
import 'package:flutter_class/screens/TodoDetailScreen.dart';
import 'package:flutter_class/screens/TodosScreen.dart';

class Routes {
  static const String todos = '/';
  static const String todoDetail = '/todo/detail';

  static Route getGeneratedRoutes(RouteSettings setting){
    final routeName = setting.name;
    final args = setting.arguments;

    switch(routeName){
      case Routes.todos:
        return MaterialPageRoute(builder: (_) => TodosScreen());
      case Routes.todoDetail:
        return MaterialPageRoute(builder: (_) => TodoDetailScreen());
      default:
        return MaterialPageRoute(builder: (_) =>  Scaffold(
          body: Center(
            child: Text('Not Found')
          ),
        )
        );

    }
  }
}