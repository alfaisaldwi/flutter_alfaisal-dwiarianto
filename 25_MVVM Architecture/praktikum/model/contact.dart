import 'dart:convert';

import 'package:flutter/material.dart';

class Contact {
  String? name;
  String? phone;

  Contact({this.name, this.phone});

  factory Contact.fromJson(Map<String, dynamic> jsonData) {
    return Contact(
      name: jsonData['name'],
      phone: jsonData['phone'],
    );
  }

  static Map<String, dynamic> toMap(Contact contact) => {
        'name': contact.name,
        'phone': contact.phone,
      };
  
  static String encode(List<Contact> contact) => json.encode(
        contact
            .map<Map<String, dynamic>>(
              (contact) => Contact.toMap(contact),
            )
            .toList(),
      );

static List<Contact> decode(String contact) =>
      (json.decode(contact) as List<dynamic>)
          .map<Contact>(
            (item) => Contact.fromJson(item),
          )
          .toList();
}

