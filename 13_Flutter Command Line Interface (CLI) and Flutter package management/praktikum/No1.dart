// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class No1 extends StatefulWidget {
  const No1({Key? key}) : super(key: key);

  @override
  State<No1> createState() => _No1State();
}

class _No1State extends State<No1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Nomor 1'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.deepPurple,
              label: Text('BADGE', style: TextStyle(color: Colors.white)),
            ),
            Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.deepPurple,
              borderRadius: BorderRadius.circular(8),
              badgeContent:
                  Text('BADGE', style: TextStyle(color: Colors.white)),
            ),
          ],
        )),
      )),
    );
  }
}
