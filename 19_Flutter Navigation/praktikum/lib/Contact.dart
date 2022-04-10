// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cobatask16/Create.dart';
import 'package:cobatask16/Models/Chart_model.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              leading: Icon(Icons.call),
              title: Text(
                items[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(items[i].phone),
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: items.length),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.of(context).pushNamed('/Create');
            },
            icon: Icon(Icons.add),
            label: Text('Route '),
          ),
          FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Create()),
              );
            },
            icon: Icon(Icons.add),
            label: Text('No Route '),
          ),
        ],
      ),
    );
  }
}
