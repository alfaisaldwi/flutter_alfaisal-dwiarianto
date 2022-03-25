// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageOneView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
            child: Image.network(
          'https://cdn.kibrispdr.org/data/gambar-codeigniter-gambar-codeigniter-png-1.jpg',
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
