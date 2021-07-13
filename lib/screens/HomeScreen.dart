import 'package:flutter/material.dart';
import 'package:flutter_class/models/user.dart';
import 'package:flutter_class/screens/DetailScreen.dart';
import 'package:flutter_class/services/api_services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    ApiService _apiService = ApiService();
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Calls'),
      ),
      body: FutureBuilder(
        future: _apiService.getUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            List<User> users = snapshot.data;
            return ListView.builder(
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
            );
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        }
      )
    );
  }
}
