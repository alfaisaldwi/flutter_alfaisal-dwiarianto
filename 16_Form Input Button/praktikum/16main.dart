import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cobatask16/Contact.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Contact(),
    );
  }
}
