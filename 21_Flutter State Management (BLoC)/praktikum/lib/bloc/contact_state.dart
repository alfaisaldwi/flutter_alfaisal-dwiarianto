part of 'contact_bloc.dart';

abstract class ContactState extends Equatable {
  ContactState();
  late List<Contact> allContact = [
    Contact(nama: 'Romero', nomor: '123'),
  ];

  @override
  List<Object> get props => [allContact];
}

class ContactInitial extends ContactState {}

class ContactLoaded extends ContactState {
  List<Contact> allContact = [];
  ContactLoaded({required this.allContact});

  @override
  List<Object> get props => [allContact];
}
