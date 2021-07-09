import 'package:flutter/material.dart';
import 'package:flutter_class/screens/AddScreen.dart';
import 'package:flutter_class/screens/HomeScreen.dart';
import 'package:flutter_class/screens/ProfileScreen.dart';
import 'package:flutter_class/screens/SearchScreen.dart';
import 'package:flutter_class/screens/ShopScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<String> appBarTitles = ['Home', 'Search', 'Add', 'Shop', 'Profile'];

  List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    ShopScreen(),
    ProfileScreen()
  ];

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
          title: Text(appBarTitles[_selectedIndex]),
        ),
        body: _screens[_selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.qr_code),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black87,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          selectedFontSize: 16,
          unselectedFontSize: 16,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: Colors.white, size: 44),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Add'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Shopping'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
            ),
          ],
        ),
      ),
    );
  }
}