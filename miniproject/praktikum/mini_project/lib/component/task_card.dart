import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/models/saveModel.dart';

class TaskCard extends StatelessWidget {
  final SaveModel task;
  final Function() onPressed;
  const TaskCard({Key? key, required this.task, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 183, 208, 247),
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(task.cityName, style: GoogleFonts.poppins()),
        // Text(task.age),
        IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text('Are You Sure ? ',
                            style: GoogleFonts.poppins()),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('No', style: GoogleFonts.poppins()),
                          ),
                          TextButton(
                            onPressed: onPressed,
                            child: Text('Yes', style: GoogleFonts.poppins()),
                          )
                        ],
                      ));
            },
            icon: const Icon(Icons.delete_forever_rounded))
      ]),
    );
  }
}
