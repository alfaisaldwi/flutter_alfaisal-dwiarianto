// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateView'),
      ),
      body: Column(
        children: [
          Form(
            key: formKey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // TextField(),
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: "Name",
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  Column(
                    children: [
                      
                      TextFormField(
                        scrollPadding: EdgeInsets.all(50),
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          labelText: "Phone Number",
                          icon: Icon(Icons.people),
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
