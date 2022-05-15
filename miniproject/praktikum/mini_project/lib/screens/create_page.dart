import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/models/db_manager.dart';
import 'package:mini_project/models/saveModel.dart';
import 'package:provider/provider.dart';

class CreatePage extends StatefulWidget {
  final SaveModel? saveModel;
  const CreatePage({
    Key? key,
    this.saveModel,
  }) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _taskNameController = TextEditingController();
  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.saveModel != null) {
      _taskNameController.text = widget.saveModel!.cityName;
      _isUpdate = true;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _taskNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 183, 208, 247),
        title: const Text(
          'Save any Cities',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(children: [
          buildNameField(),
          const SizedBox(height: 20),
          buildButton(),
        ]),
      ),
    );
  }

  Widget buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('City'),
        const SizedBox(
          height: 20,
        ),
        TextField(
            controller: _taskNameController,
            cursorColor: Colors.black,
            decoration: const InputDecoration(
                hintText: 'Input City',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ))),
      ],
    );
  }

  Widget buildButton() {
    return ElevatedButton(
        child: Text('Submit', style: GoogleFonts.poppins()),
        onPressed: () {
          if (!_isUpdate) {
            final save = SaveModel(cityName: _taskNameController.text);
            Provider.of<DbManager>(context, listen: false).addTask(save);
          } else {
            final save = SaveModel(
                id: widget.saveModel!.id, cityName: _taskNameController.text);
            Provider.of<DbManager>(context, listen: false).updateTask(save);
          }
          Navigator.pop(context);
        });
  }
}
