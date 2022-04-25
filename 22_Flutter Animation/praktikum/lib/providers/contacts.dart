import 'package:flutter/material.dart';
import 'package:task22/model/contact.dart';

class Contacts with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  addContact(Contact contacts) {
    _contacts.add(contacts);
    notifyListeners();
  }
}
