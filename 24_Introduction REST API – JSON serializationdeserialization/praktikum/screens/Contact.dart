// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:task24/screens/Create.dart';
import 'package:flutter/material.dart';
import 'package:task24/providers/contacts.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<Contacts>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact',
          textAlign: TextAlign.center,
        ),
      ),
      body: FutureBuilder(
        future: contactData.getContactAPI(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: contactData.contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${contactData.contacts[index].name}'),
                  subtitle: Text('${contactData.contacts[index].phone}'),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateContact(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
