import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_class/models/user.dart';
import 'package:flutter_class/screens/DetailScreen.dart';
import 'package:flutter_class/services/api_services.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // 2. State Variable to store all the users info
  List<User>? users = [];

  void getUserFromApi() async {
    // 3. Handle exception with try catch
    try {
      ApiService _apiService = ApiService();
      List<User>? allUsers = await _apiService.getUsers();
      setState(() {
        users = allUsers;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    // 1. Call users get api when widgets are innitially rendered on the screen
    getUserFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Calls'),
      ),
      body: users!.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users!.length,
              itemBuilder: (BuildContext context, int index) {
                User user = users![index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.phone),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(user: user)));
                  },
                );
              },
            ),
    );
  }
}
