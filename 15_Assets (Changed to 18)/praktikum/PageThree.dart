// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageThreeView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
            child: Image.network(
          'https://www.pikpng.com/pngl/b/104-1044467_original-python-language-logo-png-clipart.png',
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
