import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task13/PageOne.dart';
import 'package:task13/PageThree.dart';
import 'package:task13/No1.dart';
import 'package:task13/PageTwo.dart';
import 'package:bottom_nav_bar/bottom_nav_bar.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _body() => SizedBox.expand(
        child: IndexedStack(
          index: _currentIndex,
          children: const <Widget>[
            No1(),
            PageOne(),
            PageTwo(),
            PageThree(),
          ],
        ),
      );

  Widget _bottomNavBar() => BottomNavBar(
        showElevation: true,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
        },
        items: <BottomNavBarItem>[
          BottomNavBarItem(
            title: 'No 1.',
            icon: const Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.red.shade300,
          ),
          BottomNavBarItem(
            title: 'No 2a.',
            icon: const Icon(Icons.home),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.red.shade300,
          ),
          
          BottomNavBarItem(
            title: 'No 2b.',
            icon: const Icon(Icons.person),
            activeColor: Colors.white,
            inactiveColor: Colors.black,
            activeBackgroundColor: Colors.blue.shade300,
          ),
          BottomNavBarItem(
            title: 'No 2c.',
            icon: const Icon(Icons.chat_bubble),
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            activeBackgroundColor: Colors.green.shade300,
          ),
        ],
      );
}
