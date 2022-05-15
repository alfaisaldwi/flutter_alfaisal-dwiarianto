import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/login/login_page.dart';
import 'package:mini_project/models/db_manager.dart';
import 'package:mini_project/models/spreference.dart';
import 'package:mini_project/screens/weather_home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var islogin;

  checkUserLoginState() async {
    await Shared.getUserSharedPrefernces().then((value) {
      setState(() {
        islogin = value;
      });
    });
  }

  @override
  void initState() {
    checkUserLoginState();
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DbManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.transparent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: islogin != null
            ? islogin
                ? WeatherHome()
                : const LoginPage()
            : const LoginPage(),
      ),
    );
  }
}
