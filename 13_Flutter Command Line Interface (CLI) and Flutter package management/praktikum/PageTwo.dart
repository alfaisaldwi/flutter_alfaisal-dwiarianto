// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:barcode_widget/barcode_widget.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: BarcodeWidget(
          barcode: Barcode.code128(),
          data: 'Flutter Asik',
          width: 200,
          height: 150,
        ),
      ),
    );
  }
}
