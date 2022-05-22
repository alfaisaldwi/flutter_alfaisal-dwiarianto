import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Contact extends Equatable {
  String? nama;
  String? nomor;

  Contact({this.nama, this.nomor});

  //Membuat fungsi FromJson yang nantinya akan di decode
  factory Contact.fromJson(Map<String, dynamic> jsonData) {
    return Contact(
      nama: jsonData['nama'],
      nomor: jsonData['nomor'],
    );
  }

  //Membuat fungsi 'toMap' untuk Mapping ke/dari JSON
  static Map<String, dynamic> toMap(Contact contact) => {
        'nama': contact.nama,
        'nomor': contact.nomor,
      };

  //Membuat fungsi encode ke bentuk JSON
  static String encode(List<Contact> contact) => json.encode(
        contact
            .map<Map<String, dynamic>>(
              (contact) => Contact.toMap(contact),
            )
            .toList(),
      );

  //Membuat fungsi decode
  static List<Contact> decode(String contact) =>
      (json.decode(contact) as List<dynamic>)
          .map<Contact>(
            (item) => Contact.fromJson(item),
          )
          .toList();

  @override
  List<Object?> get props => [nama, nomor];
}
