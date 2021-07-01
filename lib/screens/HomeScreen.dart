import 'package:flutter/material.dart';
import 'package:flutter_class/constants/routes.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("HOMESCREEN"),
            ElevatedButton(
              child: Text("GO TO CONTACT"),
              onPressed: (){
                Navigator.pushNamed(context, Routes.contact);
              },
            )
          ]
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.pushNamed(context, Routes.home);
                },
              ),
              ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.home),
                onTap: (){
                  Navigator.pushNamed(context, Routes.contact);
                },
              ),
              ListTile(
                title: Text('Services'),
                leading: Icon(Icons.home)
              ),
            ]
          ),
        ),
      ),
    );
  }
}


// DirectRouting  ContactScreen()
// Named Routing  /contact
// Parameterized Routing