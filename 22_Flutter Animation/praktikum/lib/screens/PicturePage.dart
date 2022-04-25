// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:task22/screens/Create.dart';
import 'package:flutter/material.dart';
import 'package:task22/providers/contacts.dart';
import 'package:task22/screens/add_contact.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:task22/screens/transition.dart';

class PicturePage extends StatefulWidget {
  const PicturePage({Key? key}) : super(key: key);

  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PicturePage',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: isBig ? 200 : 100,
              height: isBig ? 200 : 100,
              duration: Duration(seconds: 2),
              child: Image.network(
                'https://picsum.photos/332',
                width: 280.0,
                fit: BoxFit.cover,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isBig = !isBig;
                });
              },
              child: Text('Resize'),
            )
          ],
        ),
      ),
    );
  }
}
