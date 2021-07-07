import 'package:flutter/material.dart';
import 'package:flutter_class/constants/persons.dart';
import 'package:flutter_class/models/Person.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Demo'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [...getHorizantalListItems()],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: persons.length,
                itemBuilder: (BuildContext context, int index) {
                  Person person = persons[index];
                  return getListItem(person);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> prepareListItems() {
    return persons.map((Person person) => getListItem(person)).toList();
  }

  Widget getListItem(Person person) {
    return ListTile(
      title: Text(person.name!),
      subtitle: Text(person.occupation!),
      leading: CircleAvatar(child: Text(person.age!.toString())),
      trailing: Text(person.gender!),
    );
  }

  List<Widget> getHorizantalListItems() {
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.redAccent,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.greenAccent,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.black12,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.blueAccent,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.yellow,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.grey,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ];
  }
}
