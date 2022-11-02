import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Pages/singup.dart';

import 'Pages/login.dart';
import 'Pages/welcome.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
     routes: {
      "/":(context) => const WelcomePage(),
      "/Login":(context) => const Login(),
      "/SingUp":(context) => const SingUpPage(),
     },
      debugShowCheckedModeBanner: false,
    );
  }
}

