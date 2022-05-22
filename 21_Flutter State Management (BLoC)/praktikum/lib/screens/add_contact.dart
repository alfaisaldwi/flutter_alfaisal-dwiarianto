import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/contact_bloc.dart';
import '../model/contact.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactState();
}

class _AddContactState extends State<AddContactPage> {
  String? nama;
  String? nomor;
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contact'),
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (val) {
                      nama = val;
                    },
                    decoration: new InputDecoration(
                      labelText: "Nama",
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
                  SizedBox(height: 12),
                  TextFormField(
                    onChanged: (val) {
                      nomor = val;
                    },
                    scrollPadding: EdgeInsets.all(50),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      labelText: "No Telepon",
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
                      if (_formKey.currentState!.validate() != null) {
                        _formKey.currentState!.save();
                        context.read<ContactBloc>().add(
                              AddContact(
                                Contact(nama: nama, nomor: nomor),
                              ),
                            );

                        Navigator.pop(context);
                      }
                    },
                    child: Text('Simpan'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
