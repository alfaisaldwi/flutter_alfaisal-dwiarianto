import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle styleTitle =
    GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 18);

TextStyle styleInfo =
    GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 18);

Widget WeatherDescription(
  String wind,
  String humidity,
  String pressure,
  String feels_like,
) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Wind',
                  style: styleTitle,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Pressure',
                  style: styleTitle,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$wind',
                  style: styleInfo,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  '$pressure',
                  style: styleInfo,
                )
              ],
            ),
            //

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Humidity',
                  style: styleTitle,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Feels Like',
                  style: styleTitle,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$humidity',
                  style: styleInfo,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  '$feels_like',
                  style: styleInfo,
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
