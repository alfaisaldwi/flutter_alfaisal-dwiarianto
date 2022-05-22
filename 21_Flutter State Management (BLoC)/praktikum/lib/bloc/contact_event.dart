part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class LoadAllContact extends ContactEvent {
  List<Contact> allData = [];

  // LoadAllContact(List<Contact> data);
  @override
  List<Object> get props => [allData];
}

class AddContact extends ContactEvent {
  Contact contact;
  AddContact(this.contact);

  @override
  List<Object> get props => [contact];
}

class RemoveContact extends ContactEvent {
  final Contact contact;
  const RemoveContact(this.contact);

  @override
  List<Object> get props => [contact];
}
