// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task25/model/contact.dart';
import 'package:task25/model/api/contacts.dart';
import 'package:provider/provider.dart';
import 'package:task25/screens/contacts_view_model.dart';


class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  String? name;
  String? phone;
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<ContactsViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact'),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // TextField(),
                  TextFormField(
                    onChanged: (val) {
                      name = val;
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
                          phone = val;
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
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            contactData.addContact(
                              Contact(name: name, phone: phone),
                            );
                            var postAPI = await Dio().post(
                                "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/",
                                data: {
                                  // 'id': 4,
                                  'name': name,
                                  'phone': phone
                                });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Succes Post Data ${postAPI}'),
                              ),
                            );
                          }
                          Navigator.pop(context);
                        },
                        child: Text('Save'),
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
