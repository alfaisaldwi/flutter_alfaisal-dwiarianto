// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageFourView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
            child: Image.network(
          'https://www.freepnglogos.com/uploads/javascript-png/javascript-logo-transparent-logo-javascript-images-3.png',
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
