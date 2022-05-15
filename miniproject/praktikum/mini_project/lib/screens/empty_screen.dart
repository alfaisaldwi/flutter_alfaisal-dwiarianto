import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image(
          image: AssetImage('assets/images/empty.png'),
          height: 250,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "You haven't added city",
          style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
