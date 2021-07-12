import 'package:flutter/material.dart';

class User {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  Company company;

  User({ 
    required this.id, 
    required this.name,
    required this.email,
    required this.phone,
    required this.username,
    required this.website,
    required this.company
  });

  getAge(){
    // age calculation logic
  }
}

class Company {
  String name;
  String bs;
  String catchPhrase;

  Company({
    required this.name,
    required this.bs,
    required this.catchPhrase
  });
}