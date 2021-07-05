import 'package:flutter/material.dart';
import 'package:flutter_class/constants/routes.dart';
import 'package:flutter_class/main.dart';

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
class HomePage extends StatelessWidget {
  final Map<String, dynamic> arguments = {
    'id': 12,
    'title': 'CCCCCC'
  };

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
                Navigator.pushNamed(context, Routes.contact, arguments: { 'title': 'Lets go to contact screen.'});
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
                  // Navigator.pushNamed(context, Routes.contact, arguments: ScreenArguments(
                  //   'Accept Arguments Screen',
                  //   'This message is extracted in the onGenerateRoute function.',
                  // ));
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