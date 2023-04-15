import 'package:flutter/material.dart';
import 'package:tugasprakpbm/homepage.dart';
import 'package:tugasprakpbm/loginpage.dart';
import 'package:tugasprakpbm/registrasi.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (context) => loginpage(),
        "/register": (context) =>  registrasi(),
        "/homepage": (context) =>  homepage(),
      },
      initialRoute: "/login",
    );
  }
}

