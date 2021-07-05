import 'package:flutter/material.dart';
class ContactScreen extends StatelessWidget {
  final Map<String, dynamic>? arguments;

  ContactScreen({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments!['title']),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("CONTACTSCREEN"),
            ElevatedButton(
              child: Text("GO TO Home"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ]
        ),
      ),
    );
  }
}