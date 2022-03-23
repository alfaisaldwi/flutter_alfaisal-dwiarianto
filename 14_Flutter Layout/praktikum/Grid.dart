// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task14/Models/Chart_model.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON ListView in Flutter'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(36, (index) {
          return Container(
            child: Card(
              color: Colors.deepPurpleAccent,
            ),
          );
        }),
      ),
    );
  }
}
