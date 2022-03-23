// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:barcode_widget/barcode_widget.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Container(
          child: BarcodeWidget(
            barcode: Barcode.code128(),
            data: 'Alfaisal Dwiarianto',
            width: 200,
            height: 150,
          ),
        ),
      ),
    );
  }
}
