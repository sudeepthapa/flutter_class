import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 30),
              width: 360,
              height: 360,
              color: Colors.black12,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add),
                      Icon(Icons.add_a_photo)
                  ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person),
                      Text("Heading"),
                      Divider(color: Colors.red,),
                      Text("Subtitle"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Test"),
                          Text("Test"),
                        ],
                      )
                    ]
                  )

                ]
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("8000"),
                      Icon(Icons.money),
                    ],
                  ),
                  Text("test")
                ],
              ),
            )
          ]
        ),
      )
    );
  }
}
