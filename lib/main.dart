import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  XFile? pickedFile;

  handleCameraOpen() async{
    try {
      final XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
      setState(() {
        pickedFile = image;
      });
    } catch (e) {
      print(e);
    }
  }

  handleGalleryOpen() async{
    try {
      final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        pickedFile = image;
      });
    } catch (e) {
      print(e);
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Icon(Icons.image),
                onPressed: handleGalleryOpen,
              ),
              ElevatedButton(
                child: Icon(Icons.camera),
                onPressed: handleCameraOpen,
              ),
              Container(
                width: 200,
                height: 200,
                child: pickedFile != null ? Image.file(File(pickedFile!.path), fit: BoxFit.cover,): Container()
              )
            ]
          ),
        ),
      ),
    );
  }
}
