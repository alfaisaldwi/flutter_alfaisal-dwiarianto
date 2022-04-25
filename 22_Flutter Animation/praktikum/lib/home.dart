import 'dart:ui';

import 'package:task22/model/contact.dart';
import 'package:task22/screens/Contact.dart';
import 'package:task22/screens/Create.dart';
import 'package:flutter/material.dart';
import 'package:task22/providers/contacts.dart';
import 'package:task22/screens/PicturePage.dart';
import 'package:task22/screens/add_contact.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:task22/screens/transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<Contacts>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Contact',
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, transitionClass(widget: PicturePage()));
                },
                child: Text(
                  'Picture',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, transitionClass(widget: ContactPage()));
                },
                child: Text(
                  'Contact',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}
