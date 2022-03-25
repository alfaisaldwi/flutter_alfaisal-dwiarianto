// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task15/PageOne.dart';
import 'package:task15/PageTwo.dart';
import 'package:task15/PageThree.dart';
import 'package:task15/PageFour.dart';

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
        title: Text('GridView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    color: Colors.green),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageTwo()));
                    },
                    child: Image.network(
                      'https://png2.cleanpng.com/dy/36eee0f676ad539df31c40e4aea4ed1f/L0KzQYm3VsIyN6VuepH0aYP2gLBuTgBtaZpzRdH1ZD3tccfoTf9jcpZojJ95cnBqgrL0jflvb15xedDwdXHqdX7qjB1xfaVqRadrMnK5RIG8hcEzPWg7RqIBNEW4R4qCUcUzQWY8SKU5OUm1QoO1kP5o/kisspng-plain-old-java-object-programming-language-compute-5b2b6405e12576.0645579915295703099222.png',
                      width: 140,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    color: Colors.cyan),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageThree()));
                    },
                    child: Image.network(
                      'https://www.pikpng.com/pngl/b/104-1044467_original-python-language-logo-png-clipart.png',
                      width: 100,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Colors.yellow),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PageFour()));
                      },
                      child: Image.network(
                        'https://www.freepnglogos.com/uploads/javascript-png/javascript-logo-transparent-logo-javascript-images-3.png',
                        width: 140,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
