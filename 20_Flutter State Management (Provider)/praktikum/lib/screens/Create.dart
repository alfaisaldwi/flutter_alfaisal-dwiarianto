// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:coba20/model/contact.dart';
import 'package:coba20/providers/contacts.dart';
import 'package:provider/provider.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  String? nama;
  String? nomor;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact'),
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
                    onChanged: (val) {
                      nama = val;
                    },
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
                        onChanged: (val) {
                          nomor = val;
                        },
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
                            return 'Nomor Telepon tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (formKey.currentState!.validate()) {
                              contactData.addContact(
                                  Contact(nama: nama, nomor: nomor));
                              Navigator.pop(context);
                            }
                          });
                        },
                        child: Text('Simpan'),
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
