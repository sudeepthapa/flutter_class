import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int count = 0;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: isVisible ? getDisplayCount(count) : Container()),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementCount,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: decrementCount,
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: toggleVisibility,
            child: Icon( isVisible ? Icons.visibility_rounded : Icons.visibility_off_sharp)
          ),
        ],
      ),
    );
  }

  getDisplayCount(int count) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red.withOpacity(0.5),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green.withOpacity(0.5),
          ),
        ),
        Positioned(
          top: 30,
          left: 60,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow.withOpacity(0.5),
          ),
        ),
        Positioned(
          top: 80,
          left:0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue.withOpacity(0.5),
          ),
        ),
        Positioned(
          top: 100,
          right:0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.greenAccent.withOpacity(0.5),
          ),
        ),

      ],
    );
  }

  incrementCount() {
    if(isVisible){
      setState(() {
        count = count + 1;
      });
    }
  }

  decrementCount() {
    if(isVisible){
      setState(() {
        count = count - 1;
      });
    }
  }

  toggleVisibility(){
    setState(() {
      isVisible = !isVisible;
    });
  }
}
