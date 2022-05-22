import 'package:bloc/bloc.dart';
import 'package:task21/model/contact.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc()
      : super(ContactLoaded(allContact: [
          Contact(nama: 'Iksan', nomor: '089943010312'),
        ])) {
    on<LoadAllContact>(
      (event, emit) async {
        await Future<void>.delayed(const Duration(seconds: 2));
        final SharedPreferences pref = await SharedPreferences.getInstance();
        final String? contactString = pref.getString('List Contact');
        List<Contact> data = Contact.decode(contactString!);
        emit(
          ContactLoaded(allContact: data),
        );
      },
    );

    on<AddContact>(
      (event, emit) async {
        if (state is ContactLoaded) {
          final state = this.state as ContactLoaded;
          List<Contact> newList = List.from(state.allContact)
            ..add(event.contact);
          final SharedPreferences pref = await SharedPreferences.getInstance();
          String encodedData = Contact.encode(newList);
          await pref.setString('isiContact', encodedData);

          emit(
            ContactLoaded(
              allContact: List.from(state.allContact)..add(event.contact),
            ),
          );
        }
      },
    );

    on<RemoveContact>(
      (event, emit) {
        if (state is ContactLoaded) {
          final state = this.state as ContactLoaded;

          emit(
            ContactLoaded(
              allContact: List.from(state.allContact)..remove(event.contact),
            ),
          );
        }
      },
    );
  }
}
