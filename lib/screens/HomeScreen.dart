import 'package:flutter/material.dart';
import 'package:flutter_class/screens/ContactScreen.dart';
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen()));
              },
            )
          ]
        ),
      ),
    );
  }
}


// DirectRouting  ContactScreen()
// Named Routing  /contact
// Parameterized Routing