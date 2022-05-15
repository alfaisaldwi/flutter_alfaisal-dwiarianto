// ignore_for_file: non_constant_identifier_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:mini_project/login/login_page.dart';
import 'package:mini_project/screens/weather_home.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void AlertSucces(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Login Success",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => WeatherHome())))
    ],
  ).show();
  return;
}

void AlertFailed(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "Login Failed",
    desc: "Make Sure Your Email & Password Are Correct",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context))
    ],
  ).show();
  return;
}

void AlertRegisterSucces(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Register Success",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginPage())))
    ],
  ).show();
  return;
}

void AlertRegisterFailed(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "Register Failed",
    desc: "Try to change Email & Make Sure Password has min 6 Character",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context))
    ],
  ).show();
  return;
}
