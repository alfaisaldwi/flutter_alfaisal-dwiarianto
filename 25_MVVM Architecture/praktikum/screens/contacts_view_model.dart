import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task25/model/api/contacts.dart';
import 'package:task25/model/contact.dart';

class ContactsViewModel with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  addContact(Contact contacts) {
    _contacts.add(contacts);
    notifyListeners();
  }

  Future getAllContacts() async {
    final cData = await Contacts().getContactAPI();
    if (cData != null) {
      _contacts = cData;
    } else {
      const Center(child: CircularProgressIndicator());
    }
    notifyListeners();
  }
}
