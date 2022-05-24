import 'package:flutter/material.dart';
import 'package:task25/model/contact.dart';
import 'package:dio/dio.dart';

class Contacts {
  Future<List<Contact>?> getContactAPI() async {
    final response = await Dio().get(
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/",
    );

    List<Contact> contacts = (response.data as List)
        .map((e) => Contact(name: e['name'], phone: e['phone']))
        .toList();
    return contacts;
  }
}
