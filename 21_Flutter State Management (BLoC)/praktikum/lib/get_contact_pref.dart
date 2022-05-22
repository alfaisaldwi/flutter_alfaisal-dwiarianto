import 'package:task21/bloc/contact_bloc.dart';
import 'package:task21/model/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future getContact(BuildContext context) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  final String? contactString = pref.getString('isiContact');
  List<Contact> data = Contact.decode(contactString!);
  context.read<ContactBloc>().add(LoadAllContact());
}
