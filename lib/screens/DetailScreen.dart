import 'package:flutter/material.dart';
import 'package:flutter_class/models/user.dart';
class DetailScreen extends StatelessWidget {
  final User user;

  DetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name)
      ),

      body: Center(
        child: Card(child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(user.company.catchPhrase),
        ))
      ),
    );
  }
}