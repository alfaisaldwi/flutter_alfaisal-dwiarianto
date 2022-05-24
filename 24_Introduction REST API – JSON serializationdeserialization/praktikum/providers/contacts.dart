import 'package:flutter/material.dart';
import 'package:task24/model/contact.dart';
import 'package:dio/dio.dart';

class Contacts with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  addContact(Contact contacts) {
    _contacts.add(contacts);
    notifyListeners();
  }
  Future<List<Contact>?> getContactAPI() async {
    Response<List<dynamic>> response = await Dio().get(
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/",
    );

    if (response.statusCode == 200) {
      List<Contact>? data =
          response.data?.map((item) => Contact.fromJson(item)).toList();
      return _contacts = data!;
    } else
      contacts;
    return [];
  }

}
