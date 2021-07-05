import 'package:flutter_class/screens/ContactScreen.dart';
import 'package:flutter_class/screens/HomeScreen.dart';

class Routes {
  static const String home = '/home';
  static const String contact = '/contact';
  static const String about = '/about';
  static const String services = '/services';
  static const String blog = '/blog';

  static getRoutes(){
    return {
      Routes.home: (context)=> HomePage(),
      // Routes.contact: (context) => ContactScreen()
    };
  }
}