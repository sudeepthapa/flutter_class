import 'dart:convert';

import 'package:flutter_class/models/user.dart';
import 'package:http/http.dart';

class ApiService {
  final String usersUrl = 'https://jsonplaceholder.typicode.com/users';
  
  Future<List<User>?> getUsers() async{
    try {  
      Response res = await get(Uri.parse(usersUrl));
      List result = jsonDecode(res.body);
      return result.map((re) => User.fromMap(re)).toList();
    } catch (e) {
      print(e);
    }
  }



}