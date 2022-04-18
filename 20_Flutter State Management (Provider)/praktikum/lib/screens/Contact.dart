// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:coba20/screens/Create.dart';
import 'package:flutter/material.dart';
import 'package:coba20/providers/contacts.dart';
import 'package:coba20/screens/add_contact.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder( 
        itemCount: contactData.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${contactData.contacts[index].nama}'),
            subtitle: Text('${contactData.contacts[index].nomor}'),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateContact(),
                  ));
            },
            icon: Icon(Icons.add),
            label: Text(''),
          ),
        ],
      ),
    );
  }
}
