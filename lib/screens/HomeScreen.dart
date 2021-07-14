import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  incrementCounter() async{
    final SharedPreferences prefs = await _prefs;
    int count = (prefs.getInt('counter') ?? 0) + 1;
    prefs.setInt('counter', count);
    setState(() {
      _counter = count; 
    });
  }

  resetCounter() async{
    final SharedPreferences prefs = await _prefs;
    prefs.remove('counter');
    setState(() {
      _counter = 0;
    });
  }

  setCounterInitialState() async{
    final SharedPreferences prefs = await _prefs;
    int count = prefs.getInt('counter') ?? 0;
    setState(() {
      _counter = count;
    });
  }

  @override
  void initState() {
    super.initState();
    setCounterInitialState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementCounter,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: resetCounter,
            child: Icon(Icons.delete),
          ),
        ],
      ),
      body: Center(
        child: Text(_counter.toString(), style: TextStyle(fontSize: 24),)
      ),
    );
  }
}