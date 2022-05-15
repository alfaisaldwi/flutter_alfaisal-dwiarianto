// ignore_for_file: unnecessary_string_interpolations, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget WeatherPage(Function() _setIcon, String temp, String location,
    String main, String formatedTanggal) {
  return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
    const SizedBox(height: 100),
    Image.asset(
      _setIcon(),
      height: 200,
      width: 200,
    ),
    const SizedBox(
      height: 10.0,
    ),
    Text(
      "$temp",
      style: GoogleFonts.poppins(fontSize: 46),
    ),
    const SizedBox(
      height: 10,
    ),
    Text(
      "$main",
      style: GoogleFonts.poppins(fontSize: 26, color: Colors.black),
    ),
    const SizedBox(
      height: 20,
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$location City",
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
        ),
        Text(
          "$formatedTanggal",
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
        )
      ],
    )
  ]));
}
