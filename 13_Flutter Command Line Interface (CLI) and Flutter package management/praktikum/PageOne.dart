// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: BarcodeWidget(
          barcode: Barcode.code128(),
          data: 'Altera Academy',
          width: 200,
          height: 150,
        ),
      ),
    );
  }
}
