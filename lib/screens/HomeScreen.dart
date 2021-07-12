import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_class/models/user.dart';
import 'package:flutter_class/screens/DetailScreen.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // 2. State Variable to store all the users info
  List<User> users = [];

  void getUserFromApi() async {
    // 3. Handle exception with try catch
    try {

      // 4. Prepare base url of enpoint
      final String usersUrl = 'https://jsonplaceholder.typicode.com/users';

      // 5. Get data from server with get request and await for the request to complete
      Response res = await get(Uri.parse(usersUrl));

      // 6. Convert Response object to json(Map)
      var result = jsonDecode(res.body);
      
      List<User> allUsers = [];

      // 7. Fomat reponses to User model and Company Model
      for (var userMap in result) {
        User user = User(
          name: userMap['name'] ?? '',
          email: userMap['email'] ?? '',
          phone: userMap['phone'] ?? '',
          username: userMap['username'] ?? '',
          website: userMap['website'] ?? '',
          id: userMap['id'],
          company: Company(
            name: userMap['company']['name'], 
            bs: userMap['company']['bs'], 
            catchPhrase: userMap['company']['catchPhrase'],
          )
        );
        allUsers.add(user);
      }
      
      // 8. Update the state so that updated list can be rebuild.
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
      body: users.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                User user = users[index];
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
