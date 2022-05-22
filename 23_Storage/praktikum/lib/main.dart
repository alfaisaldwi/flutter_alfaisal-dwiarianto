import 'package:task21/bloc/category_bloc.dart';
import 'package:task21/bloc/contact_bloc.dart';
import 'package:task21/get_contact_pref.dart';
import 'package:task21/model/contact.dart';
import 'package:task21/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactBloc>(
          create: (context) => ContactBloc()..add(LoadAllContact()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc()..add(LoadAllCategory()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact',
        home: Home(),
      ),
    );
  }
}
