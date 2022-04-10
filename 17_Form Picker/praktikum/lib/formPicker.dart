import 'dart:io';
import 'package:task17/previewPost.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
class formPicker extends StatefulWidget {
  const formPicker({Key? key}) : super(key: key);

  @override
  State<formPicker> createState() => _formPickerState();
}

class _formPickerState extends State<formPicker> {
  File? pathGambar;
  DateTime? tanggal;
  Color? warna = Colors.grey;
  String? caption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
        leading: Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onTap: () => buildFilePicker(context),
              decoration: InputDecoration(
                labelText: 'Cover',
              ),
              readOnly: true,
            ),
            Text('$pathGambar'),
            TextField(
              onTap: () => buildDatePicker(context),
              decoration: InputDecoration(
                label: Text('Publish at'),
                hintText: '$tanggal',
              ),
              readOnly: true,
            ),
            TextField(
              onTap: () => buildColorPicker(context),
              decoration: InputDecoration(
                labelText: 'Color Theme',
                fillColor: warna,
                filled: true,
              ),
              readOnly: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Caption',
              ),
              maxLines: 5,
              onChanged: (val) {
                caption = val;
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewPost(
                      pathGambar: pathGambar,
                      tanggal: tanggal,
                      warna: warna,
                      caption: caption,
                    ),
                  ),
                );
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }

  buildFilePicker(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        pathGambar = file;
      });
    } else {
      // User canceled the picker
    }
  }

  buildDatePicker(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2077),
    );
    setState(() {
      tanggal = selectedDate;
    });
    // return Text(DateFormat('dd-MM-yyyy').format(selectedDate));
  }

  buildColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: BlockPicker(
          pickerColor: warna!,
          onColorChanged: (color) => setState(
            () {
              warna = color;
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
