import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Platform.isIOS ? Icons.arrow_back : CupertinoIcons.back),
    );
  }
}