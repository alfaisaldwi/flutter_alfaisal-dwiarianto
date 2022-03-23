// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task14/Models/Chart_model.dart';

class ListEx extends StatefulWidget {
  const ListEx({Key? key}) : super(key: key);

  @override
  State<ListEx> createState() => _ListExState();
}

class _ListExState extends State<ListEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON ListExView in Flutter'),
      ),
      body:
          // ListExView(
          //   children: [
          //     Container(
          //       margin: EdgeInsets.all(10),
          //       decoration: BoxDecoration(border: Border.all()),
          //       child: const Text('ListEx'),
          //     )
          //   ],
          // ),
          ListView.separated(
              itemBuilder: (ctx, i) {
                return ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.greenAccent),
                    title: Text(
                      items[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(items[i].message));
              },
              separatorBuilder: (ctx, i) {
                return Divider();
              },
              itemCount: items.length),
    );
  }
}
