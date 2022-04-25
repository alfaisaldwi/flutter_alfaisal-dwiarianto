import 'package:flutter/material.dart';
import 'package:task22/model/contact.dart';
import 'package:task22/providers/contacts.dart';
import 'package:provider/provider.dart';
import 'package:task22/screens/Contact.dart';
import 'package:task22/screens/Create.dart';
import 'package:task22/screens/transition.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String? nama;
  String? nomor;

  @override
  Widget build(BuildContext context) {
    final contactData = Provider.of<Contacts>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (val) {
              nama = val;
            },
          ),
          TextField(
            onChanged: (val) {
              nomor = val;
            },
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                contactData.addContact(Contact(nama: nama, nomor: nomor));
                Navigator.pop(context);
              });
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
