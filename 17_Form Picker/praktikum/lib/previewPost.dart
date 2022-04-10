import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PreviewPost extends StatefulWidget {
  final File? pathGambar;
  final DateTime? tanggal;
  final Color? warna;
  final String? caption;

  const PreviewPost(
      {Key? key,
      required this.pathGambar,
      required this.tanggal,
      required this.warna,
      required this.caption})
      : super(key: key);

  @override
  State<PreviewPost> createState() => _PreviewPostState();
}

class _PreviewPostState extends State<PreviewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Preview Post'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.file(widget.pathGambar!),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Published Date : '),
                      Text(DateFormat('dd-MM-yyyy').format(widget.tanggal!)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Color : '),
                      CircleAvatar(
                        backgroundColor: widget.warna,
                        radius: 7,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(widget.caption!),
            ],
          ),
        ),
      ),
    );
  }
}
