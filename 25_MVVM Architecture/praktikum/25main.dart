import 'package:task25/screens/Contact.dart';
import 'package:flutter/material.dart';
import 'package:task25/model/api/contacts.dart';
import 'package:provider/provider.dart';
import 'package:task25/screens/contacts_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContactsViewModel()),
      ],
      child: const MaterialApp(
        home: ContactPage(),
      ),
    );
  }
}
