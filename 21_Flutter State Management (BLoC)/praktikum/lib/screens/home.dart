import 'package:task21/bloc/contact_bloc.dart';
import 'package:task21/get_contact_pref.dart';
import 'package:task21/model/contact.dart';
import 'package:task21/screens/Category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/add_contact.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.list_alt_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state is ContactInitial) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ContactLoaded) {
            return ListView.builder(
              itemCount: state.allContact.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${state.allContact[index].nama}'),
                  subtitle: Text('${state.allContact[index].nomor}'),
                  trailing: IconButton(
                      onPressed: () {
                        context
                            .read<ContactBloc>()
                            .add(RemoveContact(state.allContact[index]));
                      },
                      icon: Icon(Icons.delete)),
                );
              },
            );
            // return FutureBuilder(
            //   future: getContact(context),
            //   builder: (context, snapshot) {

            // }
            // );
          } else {
            return const ListTile(
              title: Text('No Data'),
            );
          }
        },
      ),
    );
  }
}
