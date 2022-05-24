// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:task25/screens/Create.dart';
import 'package:flutter/material.dart';
import 'package:task25/model/api/contacts.dart';
import 'package:provider/provider.dart';
import 'package:task25/screens/contacts_view_model.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<ContactsViewModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<ContactsViewModel>(context, listen: false);
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
            title: Text('${contactData.contacts[index].name}'),
            subtitle: Text('${contactData.contacts[index].phone}'),
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
