import 'package:task24/screens/Contact.dart';
import 'package:flutter/material.dart';
import 'package:task24/providers/contacts.dart';
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
        home: ContactPage(),
      ),
    );
  }
}
