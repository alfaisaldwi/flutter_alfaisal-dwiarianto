// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/component/transition.dart';
import 'package:mini_project/models/db_manager.dart';
import 'package:mini_project/screens/create_page.dart';
import 'package:mini_project/screens/empty_screen.dart';
import 'package:mini_project/screens/task_list.dart';
import 'package:provider/provider.dart';

class CityUser extends StatelessWidget {
  const CityUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 183, 208, 247),
        title: Text(
          'List City',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context, transitionClass(widget: const CreatePage()));
            },
          ),
        ],
      ),
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<DbManager>(builder: (context, manager, child) {
      if (manager.saveModels.isNotEmpty) {
        return TaskListScreen(
          manager: manager,
        );
      } else {
        return const EmptyScreen();
      }
    });
  }
}
