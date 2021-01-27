import 'package:flutter/material.dart';
import 'package:hello_flutter/anim.dart';
import 'package:hello_flutter/signature.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TEST',
        theme: ThemeData(primaryColor: Colors.white),
        color: Colors.white,
        home: Signature());
  }
}