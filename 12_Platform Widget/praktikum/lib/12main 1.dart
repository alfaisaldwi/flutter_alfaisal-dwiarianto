import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task11/Telegram.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Telegram(),
    );
  }
}
