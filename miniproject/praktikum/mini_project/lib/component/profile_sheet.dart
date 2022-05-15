import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile-pic.jpg'),
          radius: 50,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Alexx',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(
                'Task Complete',
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              const Icon(Icons.chevron_right_rounded),
            ])),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Goals',
              style: GoogleFonts.poppins(fontSize: 17),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Setting',
              style: GoogleFonts.poppins(fontSize: 17),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: const Text('Log out'),
          onPressed: () {},
        )
      ]),
    );
  }
}
