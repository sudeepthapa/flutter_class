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
        home: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            color: Colors.white,
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.blueAccent,
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.person,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sudip Thapa",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Software Engineer",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black54,
                              decoration: TextDecoration.none),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.redAccent,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Kathmandu, Nepal",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  color: Colors.blueAccent,
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.add,
                    size: 28,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
