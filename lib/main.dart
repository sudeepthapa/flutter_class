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
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Deerwalk Flutter Group',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                '12 Members',
                style: TextStyle(color: Colors.white54, fontSize: 13),
              )
            ]),
            // leading: Icon(Icons.arrow_back_ios),
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.call)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.video_call_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            // centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  title: Text("Learning Flutter"),
                  subtitle: Text("Learning flutter is easy sfda fdasf fdsadfa fdasfda."),
                  leading: CircleAvatar(
                    child: Icon(Icons.person)
                  ),
                  trailing: Text("JAN 20"),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  title: Text("Learning Flutter"),
                  subtitle: Text("Learning flutter is easy sfda fdasf fdsadfa fdasfda."),
                  leading: CircleAvatar(
                    child: Icon(Icons.person)
                  ),
                  trailing: Text("JAN 20"),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  title: Text("Learning Flutter"),
                  subtitle: Text("Learning flutter is easy sfda fdasf fdsadfa fdasfda."),
                  leading: CircleAvatar(
                    child: Icon(Icons.person)
                  ),
                  trailing: Text("JAN 20"),
                  onTap: (){},
                ),
                Divider(),
              ]
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.remove),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
          drawer: Drawer(
            child: SafeArea(
              child: Column(children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ]),
            ),
          ),
        ));
  }
}