import 'package:cobatask16/Create.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cobatask16/Contact.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/Contact': (_) => const Contact(),
        '/Create': (_) => const Create(),
      },
      title: 'Contact',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Contact(),
    );
  }
}
