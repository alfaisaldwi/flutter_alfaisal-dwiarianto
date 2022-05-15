// ignore_for_file: unnecessary_new

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/component/my_alert.dart';
import 'package:mini_project/component/transition.dart';
import 'package:mini_project/login/signup_sreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return LoginScreen();
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print('User Not Found');
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          transformAlignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hello",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Weather',
                          style: GoogleFonts.poppins(
                            fontSize: 44,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 35, left: 20, right: 30),
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    )),
                obscureText: true,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  height: 40,
                  width: double.infinity,
                  color: Color.fromARGB(255, 49, 48, 48),
                  child: RawMaterialButton(
                      onPressed: () async {
                        User? user = await loginUsingEmailPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                            context: context);
                        if (user != null) {
                          AlertSucces(context);
                        } else {
                          AlertFailed(context);
                        }
                      },
                      child: const Text('LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Montserrat')))),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, transitionClass(widget: SignupPage()));
                    },
                    child: const Text('Register',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
