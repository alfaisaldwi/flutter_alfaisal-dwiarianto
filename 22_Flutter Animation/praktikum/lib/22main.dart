import 'package:task22/home.dart';
import 'package:task22/screens/Contact.dart';
import 'package:flutter/material.dart';
import 'package:task22/providers/contacts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Contacts()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
