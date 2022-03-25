// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageTwoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
            child: Image.network(
          'https://png2.cleanpng.com/dy/36eee0f676ad539df31c40e4aea4ed1f/L0KzQYm3VsIyN6VuepH0aYP2gLBuTgBtaZpzRdH1ZD3tccfoTf9jcpZojJ95cnBqgrL0jflvb15xedDwdXHqdX7qjB1xfaVqRadrMnK5RIG8hcEzPWg7RqIBNEW4R4qCUcUzQWY8SKU5OUm1QoO1kP5o/kisspng-plain-old-java-object-programming-language-compute-5b2b6405e12576.0645579915295703099222.png',
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
