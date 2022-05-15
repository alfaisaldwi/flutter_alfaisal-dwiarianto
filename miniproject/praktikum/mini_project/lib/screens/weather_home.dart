// ignore_for_file: unnecessary_new, prefer_const_constructors, unnecessary_string_interpolations

import 'dart:async';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/component/transition.dart';
import 'package:mini_project/login/login_page.dart';
import 'package:mini_project/models/api/data_service.dart';
import 'package:mini_project/models/saveModel.dart';
import 'package:mini_project/models/weather_location.dart';
import 'package:mini_project/screens/city_users.dart';
import 'package:mini_project/screens/weather_desciption.dart';
import 'package:mini_project/screens/weather_page.dart';

class WeatherHome extends StatefulWidget {
  final SaveModel? saveModel;
  WeatherHome({Key? key, this.saveModel}) : super(key: key);

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  final _taskNameController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  DataService dataService = DataService();
  WeatherLocation? data;

  static var today = new DateTime.now();
  var formatedTanggal = new DateFormat.yMMMd().format(today);

  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  String _setImage() {
    String weath = "${data!.main}";

    if (weath == "Clouds") {
      return "assets/images/cloudy.jpg";
    } else if (weath == "Rain") {
      return "assets/images/rainy.jpg";
    } else if (weath == "Sunny") {
      return "assets/images/sunny.jpg";
    } else {
      return "assets/images/sunny.jpg";
    }
  }

  String _setIcons() {
    String setIcon = '${data!.main}';
    if (setIcon == "Clouds") {
      return "assets/images/icon-cloudy.gif";
    } else if (setIcon == "Rain") {
      return "assets/images/icon-rainy.gif";
    } else if (setIcon == "Sunny") {
      return "assets/images/icon-sunny.gif";
    } else {
      return "assets/images/icon-cloudy.gif";
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.saveModel != null) {
      _taskNameController.text = widget.saveModel!.cityName;
    } else {
      _taskNameController.text = "Mamuju";
    }
  }

  Future<void> getData() async {
    data = await dataService.fetchData(_taskNameController.text);
  }

  @override
  void dispose() {
    super.dispose();
    _taskNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 183, 208, 247)),
                accountName: Text(
                  "Mini Project",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "Alterra Academy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('List City'),
                onTap: () {
                  Navigator.push(context, SlideLeftRoute(widget: CityUser()));
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Weather App',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 1,
                    child: const Text("Logout"),
                    onTap: () => signOut(),
                  ),
                ];
              },
            ),
          ],
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  constraints: const BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.dstATop),
                        opacity: 50,
                        image: AssetImage(_setImage()),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WeatherPage(
                          _setIcons,
                          "${data!.temp}° C",
                          "${data!.cityName}",
                          "${data!.main}",
                          "$formatedTanggal"),
                      const SizedBox(
                        height: 60,
                      ),
                      Text('Description',
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      const Divider(),
                      const SizedBox(
                        height: 20,
                      ),
                      WeatherDescription(
                        "${data!.wind}",
                        "${data!.humidity}",
                        "${data!.pressure}",
                        "${data!.feels_like}",
                      ),
                    ],
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                  child: Center(child: Text('sd')),
                );
              }
            }));
  }
}
