import 'package:flutter/material.dart';
import 'package:flutter_class/models/phone.dart';
import 'package:flutter_class/providers/phone_provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var phoneState = Provider.of<PhoneModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Consumer<PhoneModel>(
          builder: (context, state, _){
            return Text(state.title);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/add');
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(color: Colors.black45,);
        },
        itemCount: phoneState.phones.length,
        itemBuilder: (BuildContext context, int index){
          Phone phoneData = phoneState.phones[index];
          return ListTile(
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: (){
                phoneState.setSelectedPhone(phoneData);
                Navigator.pushNamed(context, '/add');
              },
            ),
            onTap: (){
              phoneState.removePhone(phoneData.id);
            },
            title: Text(phoneData.phone),
          );
        },
      ),
    );
  }
}