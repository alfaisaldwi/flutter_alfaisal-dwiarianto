import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task14/Grid.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON ListView in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Grid(),
    );
  }
}
